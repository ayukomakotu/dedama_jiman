require 'rails_helper'

RSpec.describe "UsersProfiles", type: :system do
  
  let!(:michael) {FactoryBot.create(:michael)}   
  

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
    #pending "ページネーションが存在が機能している" do
    #end

    it "postにuserへのリンクがある" do
      create_list(:sample_post, 5, user: michael)
    end      
  end
end
