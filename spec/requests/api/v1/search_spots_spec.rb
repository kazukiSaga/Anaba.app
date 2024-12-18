require 'rails_helper'

RSpec.describe "Search Spots API", type: :request do
  describe "GET /api/v1/search_spots" do
    it "スポットを検索できる" do
      # 特定の名前のスポットを作成
      create(:spot, name: "Tokyo Tower")

      # リクエストを送信
      get "/api/v1/search_spots", params: { q: { name_cont: "Tokyo" } }

      # ステータスコード200が返ることを確認
      expect(response).to have_http_status(:ok)
    end
  end
end
