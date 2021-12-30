require 'rails_helper'

RSpec.describe Machine, type: :model do
  
  let!(:test_machine) { FactoryBot.create(:test_machine) }

  before do
    @machine = Machine.new(name: "sample_machine", 
                           kind: test_machine.kind,
                 classification: test_machine.classification)
  end

  context "validation" do

    it "machineが有効になるか" do
      expect(@machine).to be_valid
    end

    it "nameが空で無効になる" do
      @machine.name = "  "
      expect(@machine).to be_invalid
    end

    it "name一意性が担保されているか" do
      @machine.name = "test_machine"
      expect(@machine).to be_invalid
    end
  end
end
