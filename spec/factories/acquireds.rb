FactoryBot.define do
  factory :acquired do
    number { 10000 }
    unit { "発" }
    post { Post.first }
  end

  factory :acquired2, class: Acquired do
    number { 1000 }
    unit { "発" }
  end

  factory :sample_acquired, class: Acquired do
    number {100}
    unit {"発"}
    sequence(:post_id)  { |n| n+1 }
  end
end
