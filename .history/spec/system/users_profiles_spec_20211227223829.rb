require 'rails_helper'

RSpec.describe "UsersProfiles", type: :system do
  
  let!(:michael) {FactoryBot.create(:michael)}   
  let!(:test_post) {FactoryBot.create(:test_post, user: michael)}

  context "head" do
    it "タイトルは正しいか" do
      visit user_path(michael)
      expect(page).to have_title michael.name
    end
  end

  context "sidebar" do
    it "正しいユーザーの情報が表示されているか" do
      visit user_path(michael)
      expect(page).to have_content michael.name
    end
  end

  context "post" do
    it "postにuserへのリンクがある" do
      visit user_path(michael)
      click_on michael.name
      expect(current_path).to eq user_path(michael)
    end
    
    it "ページネーションが機能している" do
      create_list(:sample_post, 30, user: michael)
      let!(:most_recent) {FactoryBot.create(:most_recent)}
      visit user_path(michael)
      click_on "Next"
      click_on most_recent.user.name
      expect(current_path).to eq user_path(most_recent.user)
    end
  end
end
