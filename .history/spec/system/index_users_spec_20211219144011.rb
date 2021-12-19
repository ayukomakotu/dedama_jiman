require 'rails_helper'

RSpec.describe "IndexUsers", type: :system do

  before do
    100.times do |n|
      FactoryBot.create(:sample)
    end
  end

  context "GET /users/index" do
    it "ページネーションが機能しているか" do

    end

    it "１ページの全てのユーザーが表示されているか" do
      visit users_path
      first_page_of_users.each do |user|
        expect(response.body).to_have_link user.name, href: user_path(user)
      end
    end

   
  end
end
