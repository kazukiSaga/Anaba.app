class UsersController < ApplicationController
  before_action :authenticate_api_v1_user!
  def index
  end

  def new
  end

  def create
  end

  def edit
  end

  def show
    user = User.find(params[:id])

    render json: {
      user: user
    }
    
  end

  def update
    if current_api_v1_user.update(name: params[:name])
      render json: { message: "ニックネームが更新されました", name: current_api_v1_user.name }, status: :ok
    else
      render json: { error: "ニックネームの更新に失敗しました" }, status: :unprocessable_entity
      # render json: { error: current_api_v1_user.errors.full_messages.join(", ") }, status: :unprocessable_entity
    end
  end

  def destroy
  end
end