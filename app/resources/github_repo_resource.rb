class GithubRepoResource < JSONAPI::Resource
  attributes :name, :stars
end
