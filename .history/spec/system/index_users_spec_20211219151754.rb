require 'rails_helper'

RSpec.describe "IndexUsers", type: :system do

  before do
    100.times do |n|
      FactoryBot.create(:sample)
    end
  end

  context "GET /users/index" do
    it "ページネーションが存在しているか" do
      visit users_path
      expect(page).to have_selecter('div.pagination')
    end

    it "１ページの全てのユーザーが表示されているか" do
      visit users_path
  
    end

   
  end
end
