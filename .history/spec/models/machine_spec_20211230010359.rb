require 'rails_helper'

RSpec.describe Machine, type: :model do
  
  let!(:test_machine) { FactoryBot.create(:test_machine) }
  let!(:machine) { FactoryBot.build(:machine, kind: test_machine.kind,
                                    classification: test_machine.classification)}
  
  context "validation" do

    it "machineが有効になるか" do
      expect(@machine).to be_valid
    end
end
