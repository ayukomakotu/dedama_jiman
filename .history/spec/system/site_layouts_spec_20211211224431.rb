require 'rails_helper'

RSpec.describe "SiteLayouts", type: :system do

  context "headerのリンク" do
    it "homeへのリンクが機能しているか" do
      get root_path
      click_button 'Home'
      expect(current_path).to eq root_path
    end
  end
end
