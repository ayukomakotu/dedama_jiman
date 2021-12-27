FactoryBot.define do
  factory :test_post, class: Post do
    assosiation :user, factory: :michael
    content    {"MyText"}
    created_at {10.minutes.ago}
  end 
  
  factory :most_recent, class: Post do
    assosiation :user, factory: :michael
    content    {"most recent"}
    created_at {Time.zone.now}
  end

  factory :sample_post, class: Post do
    sequence(:content)      { |n| "sample_post#{n}"}
    sequence(:user)         { michael }
    created_at              { 1.hour.ago }
  end
end
