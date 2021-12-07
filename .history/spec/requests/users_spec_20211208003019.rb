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

  describe "PATCH /update" do
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
end
