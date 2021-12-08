require 'rails_helper'

RSpec.describe "Users", type: :request do
  before do
    @user = FactoryBot.create(:michael)
  end

  describe "GET /index" do
    it "responseが成功すること" do
      get users_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /show" do
    it "responseが成功すること" do
      get user_path(@user)
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /new" do
    it "responseが成功すること" do
      get new_user_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /edit" do
    it "responseが成功すること" do
      get edit_user_path(@user)
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /create" do

    context "パラメータが有効な場合" do

      it "リクエストが成功すること" do
        post users_path, params: {user: FactoryBot.attributes_for(:archer)}
        expect(response).to have_http_status(302)
      end

      it "showアクションにリダイレクト" do
        post users_path, params: {user: FactoryBot.attributes_for(:archer)}
        expect(response).to redirect_to User.last
      end

      it "ユーザー登録が成功する" do
        expect do
          post users_path, params: {user: FactoryBot.attributes_for(:archer)}
        end.to change(User, :count).by(1)
      end
    end

    context "パラメータが無効の場合" do
      it "ユーザー登録失敗" do
        expect do
          post users_path, params: {user: FactoryBot.attributes_for(:archer, name: "  ")}
        end.to_not change(User, :count)
      end

      it "エラーメッセージが表示される" do
        post users_path, params: {user: FactoryBot.attributes_for(:archer, name: "  ")}
        expect(response.body).to include "prohibited this user from being saved"
      end
    end
  end

  describe "PATCH /update" do
    context "パラメータが有効" do
      it "リクエストが成功すること" do
        patch user_path(@user), params: {user: FactoryBot.attributes_for(:archer)}
        expect(response).to have_http_status(302)
      end

      it "ユーザ名が更新されること" do
        expect do
          patch user_path(@user), params: {user: FactoryBot.attributes_for(:archer)}
        end.to change { User.find(@user.id).name}.from("Michael Example").to("Sterling Archer")
      end

      it "リダイレクト" do
        patch user_path(@user), params: {user: FactoryBot.attributes_for(:archer)}
        expect(response).to redirect_to User.last
      end
    end

    context "パラメータが無効" do
      it "ユーザ更新が失敗" do
        expect do patch user_path(@user), params: {
          user: FactoryBot.attributes_for(:archer, name: "   ")}
        end.to_not change (User, :count)
      end

      it "エラーメッセージが表示される" do
        patch user_path(@user), params: {
          user: FactoryBot.attributes_for(:archer, name: "   ")}
        expect(response.body).to include "prohibited this user from being saved"
      end
    end
  end

  describe "DELETE /destroy" do
    it "responseが成功する" do
      delete user_path(@user)
      expect(response).to have_http_status(302)
    end

    it "ユーザ削除に成功" do
      expect do
        delete user_path(@user)
      end.to change(User, :count).by(-1)
    end

    it "正しいリダイレクト" do
      delete user_path(@user)
      expect(response). to redirect_to(users_url)
    end
  end
end
