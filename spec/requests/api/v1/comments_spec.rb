require 'rails_helper'

RSpec.describe "Comments API", type: :request do
  let(:user) { create(:user) }
  let(:spot) { create(:spot) }
  let(:headers) { user.create_new_auth_token }

  describe "POST /api/v1/spots/:spot_id/comments" do
    context "正常系" do
      it "コメントを作成できる" do
        # コメントを送信
        post "/api/v1/spots/#{spot.id}/comments", 
             params: { comment: { title: "Great Spot", body: "Loved it!" } }, 
             headers: headers

        # ステータスコード200が返ることを確認
        expect(response).to have_http_status(:ok)
      end
    end

    context "異常系" do
      it "コメントの内容が不正な場合エラーが返る" do
        # 不正なコメントデータを送信
        post "/api/v1/spots/#{spot.id}/comments", 
             params: { comment: { title: nil, body: nil } }, 
             headers: headers

        # ステータスコード422が返ることを確認
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end

