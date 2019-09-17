class BlogComment < ApplicationRecord
  belongs_to :blog_post
  has_many :comment_answers
end
