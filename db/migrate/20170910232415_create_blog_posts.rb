class CreateBlogPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_posts do |t|
      t.string :author
      t.date :date
      t.string :slug
      t.string :text
      t.string :title

      t.timestamps
    end
  end
end
