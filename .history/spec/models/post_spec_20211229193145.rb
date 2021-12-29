require 'rails_helper'

RSpec.describe Post, type: :model do

  
  
  
  
  before do  
    let!(:test_post)             { create(:test_post) }
    let!(:most_recent)           { create(:most_recent) }
    @post = michael.posts.build(content: "Lorem ipsum", machine: test_machine,
                                                        kind: test_kind,
                                                        classification: test_classification)
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
    
    expect(Post.first).to eq most_recent
  end
end
