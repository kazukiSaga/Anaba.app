class ApplicationController < ActionController::API
        include DeviseTokenAuth::Concerns::SetUserByToken
  # 以下を追加
  def test
    render json: { message: 'This is a test message from Rails' }
  end
end
