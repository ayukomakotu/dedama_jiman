require 'rails_helper'

RSpec.describe Acquired, type: :model do

  let!(:test_kind)    { create(:test_kind)}
  let!(:test_machine) { create(:test_machine) }
  let!(:test_post)    { create(:test_post) }

  before do
    @acquired = test_post.acquireds.build(number: 10000, unit: "枚")
  end

  context "validation" do

    it "有効になるか" do
      expect(@acquired).to be_valid
    end

    it "numberが空で無効になる" do
      @acquired.number = "  "
      expect(@acquired).to be_invalid
    end

    it "unitが空で無効になる" do
      @acquired.unit = "  "
      expect(@acquired).to be_invalid
    end
  end
  
end
