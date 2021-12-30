FactoryBot.define do
  factory :test_post, class: Post do
    content        {"test post"}
    association :user,           factory: :michael
    association :machine,        factory: :test_machine
    kind           { test_machine.kind }
    association :classification, factory: :test_classification
    created_at {10.minutes.ago}
  end 
  
  factory :most_recent, class: Post do
    content    {"most recent"}
    association :user,           factory: :michael
    association :machine,        factory: :test_machine
    association :kind,           factory: :test_kind
    association :classification, factory: :test_classification
    created_at {Time.zone.now}
  end

  factory :oldest, class: Post do
    association :machine, factory: :test_machine
    content    {"oldest"}
    created_at {2.hours.ago}
  end

  factory :sample_post, class: Post do
    association :user, factory: :michael
    association :machine, factory: :test_machine
    sequence(:content)      { |n| "sample_post#{n}"}
    sequence(:created_at)   { 1.hour.ago }
  end
end
