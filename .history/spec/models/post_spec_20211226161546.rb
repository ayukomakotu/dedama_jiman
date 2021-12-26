require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @user = FactoryBot.create(:michael)
    @post = Post.new(content: "Lorem ipsum", user_id: @user.id)
  end

  it "postが有効になるか" do
    expect(@post).to be_valid
  end
end
