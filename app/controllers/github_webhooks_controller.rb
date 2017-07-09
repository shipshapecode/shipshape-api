class GithubWebhooksController < ApplicationController
  include GithubWebhook::Processor
  def github_watch(payload)
    puts payload
  end
end
