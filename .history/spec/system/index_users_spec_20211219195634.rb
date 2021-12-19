require 'rails_helper'

RSpec.describe "IndexUsers", type: :system do

  before do
    100.times do |n|
      FactoryBot.create(:sample)
    end
  end

  context "GET /users/index" do
    it "ページネーションが機能しているか" do
      let(:archer){FactoryBot.create(:archer)}
      visit users_path
      expect{ find_link('last', rel="last").click }
      expect(page).to have_content User.last.name
    end

   
  end
end
