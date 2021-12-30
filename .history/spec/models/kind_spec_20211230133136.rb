require 'rails_helper'

RSpec.describe Kind, type: :model do
  let!(:test_kind) {FactoryBot.create(:test_kind)}

  before do
    @kind = Kind.new(name: "sample_kind",
           classification: test_kind.classification)

  end

  context "validation" do

    it "machineが有効になるか" do
      expect(@machine).to be_valid
    end

    it "nameが空で無効になる" do
      @machine.name = "  "
      expect(@machine).to be_invalid
    end

    it "一意性が担保されているか" do
      @machine.name = "test_machine"
      expect(@machine).to be_invalid
    end
  end
end
