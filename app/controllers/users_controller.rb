class UsersController < ApplicationController
  before_action :authenticate_api_v1_user!


  def index
     render json: {
      user: current_api_v1_user
    }
    
  end

  def new
  end

  def create
  end

  def edit
  end

  def show
   
    
  end

  def update
    if current_api_v1_user.update(name: params[:name])
      render json: { message: "ニックネームが更新されました", name: current_api_v1_user.name }, status: :ok
    else
      render json: { error: "ニックネームの更新に失敗しました" }, status: :unprocessable_entity
    end
  end

  def destroy
  end
end