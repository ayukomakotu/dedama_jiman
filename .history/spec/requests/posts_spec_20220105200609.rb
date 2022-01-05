require 'rails_helper'

RSpec.describe "Posts", type: :request do

  let!(:michael)      { FactoryBot.create(:michael) }
  let!(:pachinko)     { FactoryBot.create(:pachinko) }
  let!(:test_kind)    { FactoryBot.create(:test_kind, classification: pachinko) }
  let!(:test_machine) { FactoryBot.create(:test_machine, kind: test_kind,
                                                         classification: pachinko)}
  

  describe "POST/create" do
    it "createした後 users/showにリダイレクトする" do
      sign_in michael
      get root_url
      expect do
        post posts_path, params: { post: {machine_id: test_machine.id,
                                          content: "content"},
                                  acquired: {number: 100} } 
      end.to change(Post, :count).by(1)
      expect(response).to have_http_status(302)
    end
  end
end
