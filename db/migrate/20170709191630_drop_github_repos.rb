class DropGithubRepos < ActiveRecord::Migration[5.1]
  def change
    drop_table :github_repos
  end
end
