class CommentsController < ApplicationController
def create
	@aritcle = Aritcle.find(params[:aritcle_id])

	@comment = @aritcle.comments.create(comment_params)

	redirect_to aritcle_path(@aritcle)
end
  
  private 
      def comment_params
	params.require(:comment).permit(:commenter, :body)
end
end
