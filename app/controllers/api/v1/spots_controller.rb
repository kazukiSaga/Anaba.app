class Api::V1::SpotsController < ApplicationController
   before_action :authenticate_api_v1_user!, except: [:index, :show]
  include PaginationModule
  
  def index
    page = params[:page] || 1
    prefectures = Prefecture.all
    tags = Tag.all 
    spots = Spot.includes(:tags).page(page).per(10) 


    pagination = resources_with_pagination(spots)
    render json: {
      spots: spots.as_json(include: { tags: { only: [:id, :name] } }),
      prefectures: prefectures.as_json(only: %i[id name]),
      tags: tags.as_json(only: %i[id name]),
      pagination: pagination.as_json
    }, status: :ok
  end

  def new
      prefectures = Prefecture.all
      tags = Tag.all


      render json: {
        prefectures: prefectures.as_json(only: %i[id name]),
        tags: tags.as_json(only: %i[id name])
      }, status: :ok
  end

  def create
    spot = Spot.new(spot_params)
    
    if params[:tags].present?
      tags = params[:tags].map do |tag|
        tag_name = tag.is_a?(String) ? tag : tag[:name]
        Tag.find_or_create_by(name: tag_name.strip) if tag_name.present?
      end
      spot.tags = tags
    end


    if spot.save
      render json: {
        spot: spot.as_json(include: { tags: { only: [:id, :name] } })
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
    tags = Tag.all

    render json: {
      spot: spot.as_json(
        include: {
          prefecture: {
            only: [:name]
          },
          tags: { 
            only: [:id, :name]
          }
        }
      ),
      prefectures: prefectures.as_json(only: %i[id name]),
      tags: tags.as_json(only: %i[id name])
    }, status: :ok
  end

  def show
    spot = Spot.find(params[:id])

    render json: {
      spot: spot.as_json(
        include: {
          prefecture: {
            only: [:name]
          },
          tags: {
            only: [:id, :name]
          }
        }
      ),
    }, status: :ok
  end

  def update
    spot = Spot.find(params[:id])
    if params[:tags].present?
      tags = params[:tags].map do |tag|
        tag_name = tag.is_a?(String) ? tag : tag[:name]
        Tag.find_or_create_by(name: tag_name.strip) if tag_name.present?
      end
      spot.tags = tags
    end    


    
    if spot.update(spot_params)
      render json: { spot: spot.as_json(include: { tags: { only: [:id, :name] } }) }, status: :ok
    else
      render json: { errors: spot.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def spot_params
    params.permit(:name, :body, :prefecture_id, :city, :longitude, :latitude).merge(user_id: current_api_v1_user.id)
  end
end
