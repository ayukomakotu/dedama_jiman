require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:michael)
  end

  context 'validation' do
    it 'userが有効になるか' do
      expect(@user).to be_valid
    end
  end
end
