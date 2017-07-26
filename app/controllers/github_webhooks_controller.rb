class GithubWebhooksController < ActionController::Base
  include GithubWebhook::Processor
  def github_watch(payload)
    name = payload['repository']['name']
    stars = payload['repository']['stargazers_count']
    GithubRepo.where(name: name).first_or_create.update(stars: stars)
  end

  def webhook_secret(payload)
    ENV['GITHUB_WEBHOOK_SECRET']
  end
end
