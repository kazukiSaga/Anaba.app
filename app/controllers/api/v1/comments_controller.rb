class Api::V1::CommentsController < ApplicationController
  before_action :authenticate_api_v1_user!


  def index
    spot = Spot.find(params[:spot_id])

     render json: {
        spot: spot.as_json(
          only: [:name, :average_rating, :average_quiet_rating],
          include: {
            prefecture: {
              only: [:name]
            },
            comments: {  
              only: [:id, :body],
              include: {
                user: {
                  only: [:name]
                }
              }
            }
          }
        )
      }
     
  end

  def new
    spot = Spot.find(params[:spot_id])

       render json: {
        spot: spot.as_json(
          only: [:name,:average_rating, :average_quiet_rating],
          include: {
            prefecture: {
              only: [:name]
            }
          }
        )
      }

  end

  def show
    comment = Comment.find(params[:id])

    render json: {
      comment: comment.as_json(
        include: {
          user: {
            only: [:name]
          }
        }
      ),
    }

  end


  def create
    spot = Spot.find(params[:spot_id])
    comment = spot.comments.build(comment_params)

    if comment.save
      render json: {spot_id: spot.id, comment_id: comment.id}, status: :ok
    else
      render json: comment.errors, status: :unprocessable_entity
    end
  end


  private

  def comment_params
    params.require(:comment).permit(:title, :body, { images: [] }).merge(user: current_api_v1_user)
  end
end
