class CommentAnswersController < ApplicationController
	def submit_answer
		byebug
	@comment_ans = CommentAnswer.new(reply: params[:answer],blog_comment_id: params[:blog_comment_id])
     @comment_ans.save
     redirect_to :back
	end
	
	def create
	respond_to do |format|
        format.js{render partial: 'comment_answers/answers'}

	end 
	end
end
