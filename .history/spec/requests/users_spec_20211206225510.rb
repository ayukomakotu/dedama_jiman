require 'rails_helper'

RSpec.describe "Users", type: :request do
  before do
    @user = build(:michael)
  end
  
  describe "GET /index" do
    it "responceが成功すること" do
      get users_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /show" do
    it "responseが成功すること" do
      get user_path()
end
