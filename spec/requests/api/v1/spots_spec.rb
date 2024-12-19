require 'rails_helper'

RSpec.describe "Spots API", type: :request do
  let(:user) { create(:user) }
  let(:prefecture) { create(:prefecture) } # 必要ならPrefectureをファクトリで生成
  let(:headers) { user.create_new_auth_token }
  let(:valid_spot_params) do
    {
      name: "テストスポット",
      body: "素晴らしい場所です",
      prefecture_id: prefecture.id, # 作成した都道府県IDを利用
      city: "東京",
      latitude: 35.6895,
      longitude: 139.6917,
      tags: ["自然"]
    }
  end

  describe "GET /api/v1/spots" do
    it "スポット一覧を取得できる" do
      # 複数のスポットを作成
      create_list(:spot, 2)

      # リクエストを送信
      get "/api/v1/spots"

      # ステータスコード200が返ることを確認
      expect(response).to have_http_status(:ok)
    end
  end

  describe "POST /api/v1/spots" do
    it "スポットを作成できる" do
      # スポット作成リクエストを送信
      post "/api/v1/spots", params: valid_spot_params, headers: headers

      # デバッグ情報を出力
      puts "Response status: #{response.status}"
      puts "Response body: #{response.body}"
      puts "Request headers: #{headers.inspect}"

      # ステータスコード200が返ることを確認
      expect(response).to have_http_status(:ok)
    end
  end
end


