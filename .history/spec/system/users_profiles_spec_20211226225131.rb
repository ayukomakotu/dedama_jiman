require 'rails_helper'

RSpec.describe "UsersProfiles", type: :system do
  before do
    let!(:michael) {FactoryBot.create(:michael)}
  end

  context "head" do
    it "タイトルは正しいか" do
      visit user_path(@user)
      expect(page).to have_title @user.name
    end
  end

  context "sidebar" do
    it "正しいユーザーの情報が表示されているか" do
      visit user_path(@user)
      expect(page).to have_content @user.name
    end
  end

  context "post" do
    pending "ページネーションが存在が機能している" do
    end

    it "postにuserへのリンクがある" do
      

end
