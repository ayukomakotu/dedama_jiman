FactoryBot.define do
  factory :test_post, class: Post do
    content    { "MyText" }
    user       { michael }
    created_at { 10.minutes.ago }
  end 
end
