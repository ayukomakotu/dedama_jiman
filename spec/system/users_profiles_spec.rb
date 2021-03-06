require 'rails_helper'

RSpec.describe "UsersProfiles", type: :system do
  
  let!(:michael)               { create(:michael)}
  let!(:archer)                { create(:archer)}
  let!(:pachinko)              { create(:pachinko) }
  let!(:test_kind)             { create(:test_kind, classification: pachinko) }
                                 
  let!(:test_machine)          { create(:test_machine, kind: test_kind,
                                                       classification: pachinko) }
                                 
  let!(:test_post)             { create(:test_post, user: michael,
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
    it "postにuserへのリンクがある" do
      visit user_path(michael)
      click_on michael.name
      expect(current_path).to eq user_path(michael)
    end
    
    it "ページネーションが機能している" do
      create_list(:sample_post, 30, user: michael)
      create_list(:sample_acquired, 30)
      visit user_path(michael)
      click_on "Next"
      expect(page).to have_content test_post.content
    end

    it "post内にmachine名の記載があるか 投稿フォーム実装後再度実装" do
      get user_path(michael)
      expect(response.body).to include test_post.machine.name
    end

    it "post内にaquired 獲得量 単位が表示されている 投稿フォーム作成後再度実装" do
      get user_path(michael)
      expect(response.body).to include test_post.acquireds.first.number.to_s
      expect(response.body).to include test_post.acquireds.first.unit
    end
  end
end
