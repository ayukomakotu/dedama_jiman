FactoryBot.define do
  factory :test_machine, class: Machine do
    name            { "test_machine" }
    kind            { test_kind }
    classification  { test_kind.classification }
  end
end
