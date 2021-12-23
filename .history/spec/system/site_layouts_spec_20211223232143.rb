require 'rails_helper'

RSpec.describe "SiteLayouts", type: :system do

  before do
    @user = FactoryBot.create(:michael)
  end

  context "headerのリンク" do
    it "homeへのリンクがあるか" do
      visit root_path
      expect(page).to have_link 'Home', href: root_path
    end

    it "helpへのリンクがあるか" do
      visit root_path
      expect(page).to have_link 'Help', href: help_path
    end

    it "sign_inへのリンクがあるか" do
      visit root_path
      expect(page).to have_link 'Sign in',
          href: new_user_session_path
    end

    it "ユーザ一覧へのリンク" do
      visit root_path
      #sign_in(@user)
      expect(page).to have_link 'Users',
          href: users_path
    end
  end

  context "home画面のリンク" do

    it "sign_upへのリンクがあるか" do
      visit root_path
      expect(page).to have_link 'Sign up now!', 
          href: new_user_registration_path
    end
  end
end
