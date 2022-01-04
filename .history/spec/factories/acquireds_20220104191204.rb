FactoryBot.define do
  factory :acquired do
    number { 10000 }
    unit { "発" }
    post { Post.first }
  end

  factory :acquired2 do
    number { 1000 }
    unit { "発" }
    post { Post.second }
end
