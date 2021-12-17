require 'rails_helper'

RSpec.describe "UsersProfiles", type: :system do
  before do
    @user = FactoryBot.create!(:michael)
  
  get user_path(@user)
end
