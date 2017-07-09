class GithubWebhooksController < ActionController::Base
  include GithubWebhook::Processor
  def github_watch(payload)
    name = payload['repository']['name']
    stars = payload['repository']['stargazers_count']
    puts name
    puts stars
    GithubRepo.where(name: name).first_or_create(name: name, stars: stars)
  end

  def webhook_secret(payload)
    ENV['GITHUB_WEBHOOK_SECRET']
  end
end
