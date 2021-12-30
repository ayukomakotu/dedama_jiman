require 'rails_helper'

RSpec.describe Acquired, type: :model do

  let!(:test_kind)    { create(:test_kind)}
  let!(:test_machine) { create(:test_machine) }
  let!(:test_post)    { create(:test_post) }

  before do
    @acquired = Acquired.new(number: 10000, unit: "枚", post: test_post)
  end

  context "validation" do

    it "machineが有効になるか" do
      expect(@acquired).to be_valid
    end

    it "nameが空で無効になる" do
      @acquired.name = "  "
      expect(@acquired).to be_invalid
    end

    it "nameの一意性が担保されているか" do
      @acquired.name = "test_kind"
      expect(@acquired).to be_invalid
    end
  end
  
end
