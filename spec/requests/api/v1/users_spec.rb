require 'rails_helper'

RSpec.describe "Users API", type: :request do
  let(:user) { create(:user) }
  let(:headers) { user.create_new_auth_token }

  describe "PATCH /api/v1/users/:id" do
    context "正常系" do
      it "ユーザーの名前を更新できる" do
        # デバッグ
        puts "Headers: #{headers}"
        
        # ユーザーの名前を更新するリクエストを送信
        patch "/api/v1/users/#{user.id}", 
              params: { name: "Updated Name" }, 
              headers: headers

        # ステータスコード200が返ることを確認
        expect(response).to have_http_status(:ok)

        # レスポンスに正しい名前が含まれることを確認
        expect(JSON.parse(response.body)["name"]).to eq("Updated Name")
      end
    end

    context "異常系" do
      it "認証なしでは更新できない" do
        # 認証なしでリクエストを送信
        patch "/api/v1/users/#{user.id}", 
              params: { name: "Updated Name" }

        # ステータスコード401が返ることを確認
        expect(response).to have_http_status(:unauthorized)
      end

      it "無効な名前では更新できない" do
        # 無効な名前でリクエストを送信
        patch "/api/v1/users/#{user.id}", 
              params: { name: "" }, 
              headers: headers

        # デバッグ情報を出力
        puts "Response status: #{response.status}"
        puts "Response body: #{response.body}"
        puts "Request headers: #{headers.inspect}"

        # ステータスコード422が返ることを確認
        expect(response).to have_http_status(:unprocessable_entity)

        # エラーメッセージが含まれることを確認
        expect(JSON.parse(response.body)["error"]).to include("更新に失敗しました")
      end
    end
  end
end

