FactoryBot.define do
  factory :test_kind, class: Kind do
    name { "test_kind" }
    association :classification, factory: :pachinko
  end
end
