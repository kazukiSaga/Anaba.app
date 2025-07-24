class Api::V1::Auth::SessionsController < ApplicationController
  def guest_sign_in
    @resource = User.guest
    
    @token = @resource.create_token
    @resource.save!
    
    response.headers['access-token'] = @token.token
    response.headers['client'] = @token.client
    response.headers['uid'] = @resource.uid
    response.headers['token-type'] = 'Bearer'
    response.headers['expiry'] = @token.expiry.to_s
    
    render json: {
      data: @resource.as_json(only: [:id, :email, :name])
    }, status: :ok
  end
end