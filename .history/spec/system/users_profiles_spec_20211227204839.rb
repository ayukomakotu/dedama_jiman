require 'rails_helper'

RSpec.describe "UsersProfiles", type: :system do
  
  let!(:michael) {FactoryBot.create(:michael)}   
  
  

  context "sidebar" do
    it "正しいユーザーの情報が表示されているか" do
      visit user_path(michael)
      expect(page).to have_content michael.name
    end
  end

  context "post" do
    it "postにuserへのリンクがある" do
      let!(:test_post) {FactoryBot.create(:test_post)}
      visit user_path(michael)
      click_on michael.name
      expect(current_path).to eq user_path(michael)
    end      
  end
end