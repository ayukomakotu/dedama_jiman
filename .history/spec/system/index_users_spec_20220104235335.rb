require 'rails_helper'

RSpec.describe "IndexUsers", type: :system do

  context "GET /users/index" do
    it "ページネーションが機能しているか" do
      let!(:archer){FactoryBot.create(:archer)}
      create_list(:sample, 30)
      visit users_path
      find_link("/users/index?page=4").click
      expect(page).to have_content User.last.name
    end
  end
end
