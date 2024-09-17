class Api::V1::SpotsController < ApplicationController
   before_action :authenticate_api_v1_user!, except: [:index, :show]
  include PaginationModule
  
  def index

    page = params[:page] || 1
    prefectures = Prefecture.all
    spots = Spot.all.page(page).per(10)
    pagination = resources_with_pagination(spots)

    render json: {
      spots: spots.as_json,
      prefectures: prefectures.as_json(only: %i[id name]),
      pagination: pagination.as_json
    }, status: :ok
  end

  def new
    prefectures = Prefecture.all

    render json: {
      prefectures: prefectures.as_json(only: %i[id name])
    }, status: :ok
  end

  def create
    spot = Spot.new(spot_params)
    
    if spot.save
      render json: {
        spot: spot.as_json
      }
    else
      render json: {
        errors: spot.errors.full_messages
      },status: :bad_request
    end
  end

  def edit
    spot = Spot.find(params[:id])
    prefectures = Prefecture.all


    render json: {
      spot: spot.as_json(
        include: {
          prefecture: {
            only: [:name]
          }
        }
      ),
      prefectures: prefectures.as_json(only: %i[id name]),
    },status: :ok
  end

  def show
    spot = Spot.find(params[:id])

    render json: {
      spot: spot.as_json(
        include: {
          prefecture: {
            only: [:name]
          }
        }
      )
    },status: :ok
  end

  def update
    spot = Spot.find(params[:id])
    if spot.update(spot_params)
      render json: {},status: :created
    else
      render json: {
        errors: spot.errors.full_messages
      },status: :bad_request
    end
    
  end


  private

  def spot_params
    params.permit(:name, :body, :prefecture_id, :city).merge(user_id: current_api_v1_user.id)
  end
end
