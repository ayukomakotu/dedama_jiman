require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.new(name: "Example User", 
                     email: "user@example.com",
                     password: "foobar", 
                     password_confirmation: "foobar")
  end

  context 'validation' do
    it 'userが有効になるか' do
      expect(@user).to be_valid
    end

    it 'nameが空欄だと無効になるか' do
      @user.name = "    "
      expect(@user).to be_invalid
    end

    it 'nameが50文字以上で無効になるか' do
      @user.name = "a" * 51
      expect(@user).to be_invalid
    end

    it 'nameが重複していたら無効になるか' do
      FactoryBot.build

  end
end
