require 'rails_helper'

RSpec.describe "UsersSignups", type: :system do
  pending("のちに実装")
    context "パラメータが無効な場合" do
    end
  end

  context "パラメータが有効な場合" do
    it "ユーザーが増えること" do
      visit new_user_registration_path
      expect do
       
        fill_in 'email',                 with: 'test@example.com'
        fill_in 'password',              with: 'password'
        fill_in 'password confirmation', with: 'password'
        click_on 'Sign up'
      end.to change(User, :count).by(1)
    end
end
