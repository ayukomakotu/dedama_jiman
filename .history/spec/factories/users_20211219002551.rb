FactoryBot.define do
  factory :michael, class: User do
    name                     {"Michael Example"}
    email                    {"michael@example.com"}
    password                 {"password"}
    password_confirmation    {"password"}
  end

  factory :sample, class: User do
    sequence(:name)         { |n| "user#{n}"}
    sequence(:email)        { |n| "user#{n}@example.com"}
    password                {"password"}
    password_confirmation   {"password"}
  end
end
