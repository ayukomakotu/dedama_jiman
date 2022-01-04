require 'rails_helper'

RSpec.describe "IndexUsers", type: :system do

let!(:archer){FactoryBot.create(:archer)}

  context "GET /users/index" do
    it "ページネーションが機能しているか" do
      create_list(:sample, 30)
      visit users_path
      click_link "Next"
      expect(page).to have_content User.last.name
    end
  end
end
