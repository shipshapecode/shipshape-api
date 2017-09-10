class ChangeTextFormatInBlogPost < ActiveRecord::Migration[5.1]
  def change
    change_column :blog_posts, :text, :text
  end
end
