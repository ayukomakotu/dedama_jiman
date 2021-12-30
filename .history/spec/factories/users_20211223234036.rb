FactoryBot.define do
  factory :example, class: User do
    name                     {"Example User"}
    email                    {"example@railstutorial.org"}
    password                 {"password"}
    password_confirmation    {"password"}
  end

  factory :michael, class: User do
    name                     {"Michael Example"}
    email                    {"michael@example.com"}
    password                 {"password"}
    password_confirmation    {"password"}
  end

  factory :archer, class: User do
    name                     {"Archer Example"}
    email                    {"archer@example.com"}
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