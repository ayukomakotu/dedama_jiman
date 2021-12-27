FactoryBot.define do
  factory :test_post, class: Post do
    association :user, factory: :michael
    content    {"MyText"}
    created_at {10.minutes.ago}
  end 
  
  factory :most_recent, class: Post do
    association :user, factory: :michael
    content    {"most recent"}
    created_at {Time.zone.now}
  end

  factory :sample_post, class: Post do
    association :user, factory: :michael
    sequence(:content)      { |n| "sample_post#{n}"}
    sequence(:created_at)   { 1.hour.ago }
  end

  factory :sample_post2, class: Post do
    sequence(:content)      { |n| "sample_post2_#{n}"}
    sequence(:created_at)   { Time.zone.now }
  end
end
