require 'rails_helper'

RSpec.describe "IndexUsers", type: :system do

  before do
    100.times do |n|
      FactoryBot.create(:sample)
    end
  end

  context "GET /users/index" do
    it "ページネーションが機能しているか" do
      visit users_path
      expect{ find_link('2', rel="next").click }
     
  
    end

   
  end
end
