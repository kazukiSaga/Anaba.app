class Api::V1::MarkerSpotsController < ApplicationController
  def index
    spots = Spot.all

    render json: {
      spots: spots.as_json(only: [:id, :name, :average_rating, :average_quiet_rating, :latitude, :longitude]),
    }, status: :ok
  end
end