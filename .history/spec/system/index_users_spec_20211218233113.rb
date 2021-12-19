require 'rails_helper'

RSpec.describe "IndexUsers", type: :system do
  context "GET /users/index" do
    it "ページネーションが表示されているか" do

    end

    it "１ページの全てのユーザーが表示されているか" do
      get users_path
      first_page_of_users = User.all.paginate(page: 1)
      first_page_of_users.each do |user|
        expect(response.body).to_have_link user.name, href: user_path(user)
      end
    end

   
  end
end
