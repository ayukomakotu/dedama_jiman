FactoryBot.define do
  factory :michael, class: User do
    name                     {"Michael Example"}
    email                    {"michael@example.com"}
    password                 {"password"}
    password_confirmation    {"password"}
  end
end

50.times do |n|
  FactoryBot.define do
    factory :user"#{n}", class: User do
      name                   {"user#{n}"}
      email                  {"user#{n}@example.com"}
      password                 {"password"}
      password_confirmation    {"password"}
    end
  end
end
