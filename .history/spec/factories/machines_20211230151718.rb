FactoryBot.define do
  factory :test_machine, class: Machine do
    name            { "test_machine" }
    kind            { Kind.first }
    classification  { Classification.first }
  end
end
