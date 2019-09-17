class CreateCommentAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_answers do |t|
      t.references :blog_comment, foreign_key: true
      t.string :reply

      t.timestamps
    end
  end
end
