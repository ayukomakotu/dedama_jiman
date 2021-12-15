FactoryBot.define do
  factory :michael, class: User do
    name                     {Michael Example}
    email                    {michael@example.com}
    password_digest          {User.digest('password')}
  end
end
