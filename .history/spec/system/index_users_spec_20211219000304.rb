require 'rails_helper'

RSpec.describe "IndexUsers", type: :system do

  before do
    FactoryBot.create_list(:user, 100)
  end

  context "GET /users/index" do
    it "ページネーションが表示されているか" do

    end

    it "１ページの全てのユーザーが表示されているか" do
      get users_path
      debugger
      first_page_of_users = User.all.paginate(page: 1)
      first_page_of_users.each do |user|
        expect(response.body).to_have_link user.name, href: user_path(user)
      end
    end

   
  end
end
