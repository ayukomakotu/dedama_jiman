FactoryBot.define do
  factory :michael, class: User do
    name  {"Michael Example"}
    email {"michael@example.com"}
  end

  factory :archer, class: User do
    name  {"Sterling Archer"}
    email {"duchess@example.gov"}
  end
end

