class CommentsController < ApplicationController
  def comment_params
    params.require(:comment).permit(:user_id, :spot_id, :title, :body, memories_attributes: [:image])
  end
end
