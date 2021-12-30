require 'rails_helper'

RSpec.describe "Users", type: :request do
  before do
    @user = create(:michael)
  end

  describe "GET /index" do
    it "responceが成功すること" do
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
    it "リクエストに成功したらshowアクションにリダイレクト" do
      before do
        @new_user = build(:archer)
      post users_path, params: {user: {name: archer.name,
                                       email: archer.email}}
      expect(response).to redirect_to(user_path())
    end
  end

end