FactoryBot.define do
  factory :acquired do
    number { 10000 }
    unit { "枚" }
    post { Post.first }
  end
end
