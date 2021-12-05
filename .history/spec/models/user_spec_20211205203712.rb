require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validation' do
    before do
      @user = build(:michael)
    end

    it "有効なユーザ" do
      expect(@user).to be_valid
    end
  end


end
