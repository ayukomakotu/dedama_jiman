require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validation' do
    before do
      @user = build(:michael)
    end

    it "有効なユーザ" do
      expect(@user).to be_valid
    end

    it "nameが空欄だと無効" do
      @user.name = "    "
      expect(@user).to be_invalid
    end

    it 'emailが空だと無効になるか' do
      @user.email = "    "
      expect(@user).to be_invalid
    end

    it 'nameは50文字まで有効になっているか' do
      @user.name = "a" * 51
      expect(@user).to be_invalid
    end

    it 'emailは250文字まで有効になるか' do
      @user.email = "a" * 244 + "@example.com"
      expect(@user).to be_invalid
    end

    it '有効なemailのフォーマット' do
      valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
      valid_addresses.each do |valid_address|
        @user.email = valid_address
        expect(@user).to be_valid
        #失敗した時のメッセージをチェックするexampleはどう書いたらいい？
      end
    end
  end


end
