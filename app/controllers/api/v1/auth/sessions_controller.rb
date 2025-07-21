class Api::V1::Auth::SessionsController < ApplicationController
  def guest_sign_in
    # ゲストユーザーを取得/作成
    @resource = User.guest
    
    # 認証トークンを生成
    @token = @resource.create_token
    @resource.save!
    
    # レスポンスヘッダーに認証情報を設定
    response.headers['access-token'] = @token.token
    response.headers['client'] = @token.client
    response.headers['uid'] = @resource.uid
    response.headers['token-type'] = 'Bearer'
    response.headers['expiry'] = @token.expiry.to_s
    
    # ユーザー情報をJSONで返却
    render json: {
      data: @resource.as_json(only: [:id, :email, :name])
    }, status: :ok
  end
end