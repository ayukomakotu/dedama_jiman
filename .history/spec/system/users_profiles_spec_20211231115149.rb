require 'rails_helper'

RSpec.describe "UsersProfiles", type: :system do
  
  let!(:michael)               { create(:michael)}
  let!(:test_classification)   { create(:test_classification) }
  let!(:test_kind)             { create(:test_kind, classification: test_classification) }
                                 
  let!(:test_machine)          { create(:test_machine, kind: test_kind,
                                                       classification: test_classification) }
                                 
  let!(:test_post)             { create(:test_post, user: michael,
                                                    classification: test_classification,
                                                    kind: test_kind,
                                                    machine: test_machine) }

  let!(:oldest)                { create(:oldest, user: michael,
                                                 classification: test_classification,
                                                 kind: test_kind,
                                                 machine: test_machine) }
  let!(:acquired)              { create(:acquired) }

  context "head" do
    it "タイトルは正しいか" do
      visit user_path(michael)
      expect(page).to have_title michael.name
    end
  end

  context "sidebar" do
    it "正しいユーザーの情報が表示されているか" do
      visit user_path(michael)
      expect(page).to have_content michael.name
    end
  end

  context "post" do
    pending "postにuserへのリンクがある" do
      visit user_path(michael)
      click_on michael.name
      expect(current_path).to eq user_path(michael)
    end
    
    pending "ページネーションが機能している" do
      create_list(:sample_post, 29, user: michael)
      visit user_path(michael)
      click_on "Next"
      click_on oldest.user.name, match: first
      expect(current_path).to eq user_path(oldest.user)
    end

    it "post内にmachine名の記載があるか" do
      get user_path(michael)
      expect(response.body).to include test_post.machine.name
    end

    it "post内にaquired 獲得量　単位が表示されている" do
      debugger
      get user_path(michael)
      expect(response.body).to include test_post.acquireds.first.number
      expect(response.body).to include test_post.acquireds.first.unit
    end
  end
end
