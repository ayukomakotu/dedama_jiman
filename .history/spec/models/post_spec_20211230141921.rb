require 'rails_helper'

RSpec.describe Post, type: :model do

  let!(:test_machine) { create(:test_machine)}
  let!(:test_post)    { create(:test_post) }
  before do
    @post = test_post.user.posts.build(content: "valid_post",
                                    user: test_post.user,
                                 machine: test_post.machine,
                                    kind: test_post.kind,
                          classification: test_post.classification)
  end

  context "validation" do
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
  end

  context "order" do               
    it "投稿は作成時間の逆順で表示されるか" do
      most_recent = Post.create(content: "most_recent",
                                   user: test_post.user,
                                machine: test_post.machine,
                                   kind: test_post.kind,
                         classification: test_post.classification)
      expect(Post.first).to eq most_recent
    end
  end
end
