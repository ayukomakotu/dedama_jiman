require 'rails_helper'

RSpec.describe "UsersProfiles", type: :system do
  
  let!(:michael)   {FactoryBot.create(:michael)}   
  let!(:archer)    {FactoryBot.create(:archer)}
  let!(:test_post) {FactoryBot.create(:test_post, user: michael)}
  let!(:oldest)    {FactoryBot.create(:oldest, user: archer)}

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
      visit user_path(michael)
      click_on "Next"
      click_on oldest.user.name
      expect(current_path).to eq user_path(oldest.user)
    end
  end
end
