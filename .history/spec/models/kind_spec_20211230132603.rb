require 'rails_helper'

RSpec.describe Kind, type: :model do
  let!(:test_kind) {FactoryBot.create(:test_kind)}

  before do
    @kind = Kind.new(name: "sample_kind",
           classification: test_kind.classification)

end
