class CreateGithubRepos < ActiveRecord::Migration[5.1]
  def change
    create_table :github_repos do |t|
      t.string :name
      t.integer :stars

      t.timestamps
    end
  end
end
