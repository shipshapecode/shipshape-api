class GithubWebhooksController < ActionController::Base
  require 'json'
  include GithubWebhook::Processor
  def github_watch(payload)
    name, stargazers_count = payload['repository'].to_json
    puts name
    puts stargazers_count
    GithubRepo.where(name: name).first_or_create(name: name, stars: stargazers_count)
  end

  def webhook_secret(payload)
    ENV['GITHUB_WEBHOOK_SECRET']
  end
end
