class Api::V1::AssessmentsController < ApplicationController
  before_action :authenticate_api_v1_user!


  def create
    spot = Spot.find(params[:spot_id])
    assessment =  spot.assessments.new(assessment_params)
    
    if assessment.save
      ratings = spot.assessments.pluck(:rating)
      avg_rating =  ratings.sum / ratings.length

      quiet_ratings = spot.assessments.pluck(:quiet_rating)
      avg_quiet_rating =  quiet_ratings.sum / quiet_ratings.length

      spot.update(average_rating: avg_rating)
      spot.update(average_quiet_rating: avg_quiet_rating)

      render json: {
        spot: spot.as_json(
          include: {
            prefecture: {
              only: [:name]
            }
          }
        )
      },status: :ok
    else
      render json: {
        errors: assessment.errors.full_messages
      }
    end 
  end

  def show
  end

  private

  def assessment_params
    params.permit(:rating, :quiet_rating).merge(user_id: current_api_v1_user.id)
  end
end
