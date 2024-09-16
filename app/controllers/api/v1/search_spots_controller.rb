class Api::V1::SearchSpotsController < ApplicationController

  def index
    q = Spot.ransack(search_params)
    
    spots = q.result

    render json: {
      spots: spots.as_json
    }
  end

  private

  def search_params
      params.require(:q).permit(:name_cont,:prefecture_id_eq)
  end
end
