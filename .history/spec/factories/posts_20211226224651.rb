FactoryBot.define do
  factory :test_post, class: Post do
    content    {"MyText"}
    user       {FactoryBot.create(:michael)}
    created_at {10.minutes.ago}
  end 
  
  factory :most_recent, class: Post do
    content    {"most recent"}
    user       {FactoryBot.create(:michael)}
    created_at {Time.zone.now}
  end

  factory :test_post, class: Post do
    sequence(:content)      { |n| "test_post#{n}"}
    sequence(:user)         { michael }
    created_at              { 1.hour.ago }
  end
end
