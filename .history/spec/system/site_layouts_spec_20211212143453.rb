require 'rails_helper'

RSpec.describe "SiteLayouts", type: :system do

  context "headerのリンク" do
    it "homeへのリンクが機能しているか" do
      get root_path
      expect(response.body).to have_link 'Home', href: root_path
    end

    it "helpへのリンクが機能しているか" do
      get root_path
      expect(response.body).to have_link 'Help', href: help_path
    end

    it "signuoリンクが機能しているか" do
      get root_path
      expect(response.body).to have_link 'Signup', href: signup_path
    end
  end
end
