class GithubRepoResource < JSONAPI::Resource
  attributes :description, :name, :stars
end
