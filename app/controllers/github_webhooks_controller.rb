class GithubWebhooksController < ActionController::Base
  include GithubWebhook::Processor
  def github_watch(payload)
    description = payload['repository']['description']
    name = payload['repository']['name']
    stars = payload['repository']['stargazers_count']
    GithubRepo.where(name: name).first_or_create.update(description: description, stars: stars)
  end

  def webhook_secret(payload)
    ENV['GITHUB_WEBHOOK_SECRET']
  end
end
