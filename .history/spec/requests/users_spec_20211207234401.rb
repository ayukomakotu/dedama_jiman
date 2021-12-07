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

    it "リクエストが成功すること" do
      expect(response.status).to eq 302
    it "showアクションにリダイレクト" do
      post users_path, params: {user: {name: @new_user.name,
                                       email: @new_user.email}}
      expect(response).to redirect_to User.last
    end

    it "ユーザー登録が成功する" do
      expect do
        post users_path, params: {user: FactoryBot.attributes_for(:archer)}
      end.to change(User, :count).by(1)
    end

    it ""
  end

end
