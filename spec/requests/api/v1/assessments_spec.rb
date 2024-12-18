require 'rails_helper'

RSpec.describe "Assessments API", type: :request do
  let(:user) { create(:user) }
  let(:spot) { create(:spot) }
  let(:headers) { user.create_new_auth_token }

  describe "POST /api/v1/spots/:spot_id/assessments" do
    context "正常系" do
      it "評価を作成できる" do
        # リクエストを送信
        post "/api/v1/spots/#{spot.id}/assessments", 
             params: { rating: 4, quiet_rating: 5 }, 
             headers: headers

        # ステータスコード200が返ることを確認
        expect(response).to have_http_status(:ok)
      end
    end

    context "異常系" do
      it "評価が不正な場合エラーが返る" do
        # 不正なデータを送信
        post "/api/v1/spots/#{spot.id}/assessments", 
             params: { rating: nil, quiet_rating: nil }, 
             headers: headers

        # ステータスコード422が返ることを確認
        expect(response).to have_http_status(:unprocessable_entity)
        error_messages = JSON.parse(response.body)["errors"]
        expect(error_messages).to include("Ratingを入力してください")
        expect(error_messages).to include("Quiet ratingを入力してください")
      end
    end
  end
end
