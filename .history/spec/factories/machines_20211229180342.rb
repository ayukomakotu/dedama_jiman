FactoryBot.define do
  factory :test_machine, class: Machine do
    name            { "test_machine" }
    association :kind, factory: :test_kind
    debugger
    classification  { test_kind.classification }
  end
end
