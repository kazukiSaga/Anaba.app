require 'rails_helper'

RSpec.describe "Marker Spots API", type: :request do
  describe "GET /api/v1/marker_spots" do
    it "スポット一覧を取得できる" do
      # 複数のスポットを作成
      create_list(:spot, 3)

      # リクエストを送信
      get "/api/v1/marker_spots"

      # ステータスコード200が返ることを確認
      expect(response).to have_http_status(:ok)
    end
  end
end

