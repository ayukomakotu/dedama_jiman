require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "GET /home" do
    it "レスポンスに成功" do
      get root_path
      expect(response).to have_http_status(:success)
    end

    it "正しいタイトルが表示されている" do
      get root_path
      assert_select "title", "Home"
    end
    
  end
end
