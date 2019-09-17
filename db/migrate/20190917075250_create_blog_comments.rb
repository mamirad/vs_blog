class CreateBlogComments < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_comments do |t|
      t.string :comment
      t.references :blog_post, foreign_key: true

      t.timestamps
    end
  end
end
