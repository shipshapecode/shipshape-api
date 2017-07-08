class GithubRepoResource < JSONAPI::Resource
  attributes :name, :repo, :stars
end
