require 'rails_helper'

RSpec.describe "IndexUsers", type: :system do

  
    100.times do |n|
      let!(:sample) {FactoryBot.create(:sample)}
    end
  

  context "GET /users/index" do
    let(:archer){FactoryBot.create(:archer)}
    it  "ページネーションが機能しているか" do
      debugger
      visit users_path
      find_link("/users/index?page=4").click
      expect(page).to have_content User.last.name
    end

   
  end
end
