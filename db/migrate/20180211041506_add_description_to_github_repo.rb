class AddDescriptionToGithubRepo < ActiveRecord::Migration[5.1]
  def change
    add_column :github_repos, :description, :string
  end
end
