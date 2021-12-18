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
        fill_in "user[name]",       with: 'test_name'
        fill_in 'Email',                 with: 'test@example.com'
        fill_in 'Password',              with: 'password'
        fill_in 'Password confirmation', with: 'password'
        click_on 'Sign up'
      end.to change(User, :count).by(1)
    end
end
