require 'rails_helper'

RSpec.describe "UsersSignups", type: :system do
  pending("のちに実装")
    context "パラメータが無効な場合" do
    end
  end

  context "パラメータが有効な場合" do
    it "ユーザーが増えること" do
      #ホームに移動
      visit new_user_registration_path
      #フォームに内容を入力
      fill_in ''
      #signupボタンを押す
      #
    end
end
