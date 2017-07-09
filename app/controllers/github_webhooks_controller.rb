class GithubWebhooksController < ActionController::Base
  include GithubWebhook::Processor
  skip_before_action :verify_authenticity_token
  def github_watch(payload)
    name, stargazers_count = payload.repository
    GithubRepo.find_or_create_by(name: name, stars: stargazers_count)
  end

  def webhook_secret(payload)
    ENV['GITHUB_WEBHOOK_SECRET']
  end
end
