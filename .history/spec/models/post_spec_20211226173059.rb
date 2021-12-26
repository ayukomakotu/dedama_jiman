require 'rails_helper'

RSpec.describe Post, type: :model do

  let!(:archer) { create(:michael) }
  let!(:most_recent) { create(:most_recent) }
  
  before do  
    @post = michael.posts.build(content: "Lorem ipsum")
  end
  it "postが有効になるか" do
    expect(@post).to be_valid
  end

  it "user_idが空で無効" do
    @post.user_id = nil
    expect(@post).to be_invalid
  end

  it "contentが140字以内" do
    @post.content = "a"*141
    expect(@post).to be_invalid
  end

  it "投稿は作成時間の逆順で表示されるか" do
  end
end
