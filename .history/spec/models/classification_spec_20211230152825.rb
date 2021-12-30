require 'rails_helper'

RSpec.describe Classification, type: :model do

  let!(:test_classification) {FactoryBot.create(:test_classification)}

  before do
    @kind = Kind.new(name: "sample_classification")

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
