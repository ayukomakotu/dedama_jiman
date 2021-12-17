require 'rails_helper'

RSpec.describe "SiteLayouts", type: :system do

  context "headerのリンク" do
    it "homeへのリンクが機能しているか" do
      visit root_path
      expect(page).to have_link 'Home', href: root_path
    end

    it "helpへのリンクが機能しているか" do
      visit root_path
      expect(page).to have_link 'Help', href: help_path
    end
  end
end
