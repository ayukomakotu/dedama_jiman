FactoryBot.define do
  factory :test_machine, class: Machine do
    name            { "test_machine" }
    debugger
    association :kind, factory: :test_kind
    classification  { test_kind.classification }
  end
end
