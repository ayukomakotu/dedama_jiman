require 'rails_helper'

RSpec.describe Acquired, type: :model do

    let!(:test_kind) {FactoryBot.create(:test_kind)}
  
    before do
      @kind = Acquired.new(number: 10000, unit: "枚", post: test_post)
  
    end
  
    context "validation" do
  
      it "machineが有効になるか" do
        expect(@kind).to be_valid
      end
  
      it "nameが空で無効になる" do
        @kind.name = "  "
        expect(@kind).to be_invalid
      end
  
      it "nameの一意性が担保されているか" do
        @kind.name = "test_kind"
        expect(@kind).to be_invalid
      end
    end
  
end
