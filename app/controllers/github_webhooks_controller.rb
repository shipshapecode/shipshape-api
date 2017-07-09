class GithubWebhooksController < ApplicationController
  include GithubWebhook::Processor
  def github_watch(payload)
    name, stargazers_count = payload.repository
    GithubRepo.find_or_create_by(name: name, stars: stargazers_count)
  end
end
