require 'rails_helper'

RSpec.describe "IndexUsers", type: :system do
  context "GET /users/index" do
    it "ページネーションが表示されているか" do

    end

    it "１ページの全てのユーザーが表示されているか" do
      first_page_of_users = User.all.paginate(page: 1)
      first_page_of_users.each do |user|
        expect(response.body).to include user.name
      end
    end
  end
end
