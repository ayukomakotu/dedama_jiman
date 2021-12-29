FactoryBot.define do
  factory :test_machine, class: Machine do
    name            { "test_machine" }
    association :kind,           factory: :test_kind
    association :classification, factory: :test_classification
  end
end
