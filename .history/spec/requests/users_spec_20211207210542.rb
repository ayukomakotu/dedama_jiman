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
    before do
      @new_user = FactoryBot.build(:archer)
    end
    it "リクエストに成功したらshowアクションにリダイレクト" do
      post users_path, params: {user: {name: @new_user.name,
                                       email: @new_user.email}}
      expect(response).to redirect_to User.last
    end

    it "ユーザー登録が成功する" do
      post :create, params: {user: FactoryBot.attributes_for(:archer)}
  end

end
