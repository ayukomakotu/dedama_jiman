require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "GET /home" do
    it "レスポンスに成功" do
      get root_path
      expect(response).to have_http_status(200)
    end

    it "正しいタイトルが表示されている" do
      get root_path
      expect("title").to_be("Home")
    end
    
  end
end
