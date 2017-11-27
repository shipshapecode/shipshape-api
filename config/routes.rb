Rails.application.routes.draw do
  jsonapi_resources :contacts, only: :create
  jsonapi_resources :github_repos
  resource :github_webhooks, only: :create, defaults: { formats: :json }
end
