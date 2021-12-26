FactoryBot.define do
  factory :test_post, class: Post do
    content    {"MyText"}
    user       {Factorybot.create(:michael)}
    created_at {10.minutes.ago}
  end 
  
  factory :most_recent, class: Post do
    content    {"most recent"}
    user       {Factorybot.create(:michael)}
    created_at {Time.zone.now}
  end

end
