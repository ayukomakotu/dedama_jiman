require 'rails_helper'

RSpec.describe Classification, type: :model do

  let!(:pachinko) {FactoryBot.create(:pachinko)}

  before do
    @classification = Classification.new(name: "sample_classification")
  end

  context "validation" do

    it "machineが有効になるか" do
      expect(@classification).to be_valid
    end

    it "nameが空で無効になる" do
      @classification.name = "  "
      expect(@classification).to be_invalid
    end
  end

end
