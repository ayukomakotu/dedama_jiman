# メインのサンプルユーザーを1人作成する
User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password: "password",
             password_confirmation: "password",
             confirmed_at: 2.hour.ago,
             confirmation_sent_at: 1.hour.ago)

# 追加のユーザーをまとめて生成する
99.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password = "password"
    User.create!(name:  name,
                 email: email,
                 password:              password,
                 password_confirmation: password,
                 confirmed_at: 1.hour.ago,
                 confirmation_sent_at: Time.zone.now)
end

#区分のサンプルデータ
Classification.create!(name: "pachinko")
Classification.create!(name: "slot")
#タイプのサンプルデータ
Kind.create!(name: "ST", classification: Classification.first)
Kind.create!(name: "確変", classification: Classification.first)
Kind.create!(name: "羽根もの", classification: Classification.first)
Kind.create!(name: "一発", classification: Classification.first)
Kind.create!(name: "AT", classification: Classification.second)
Kind.create!(name: "ART", classification: Classification.second)
Kind.create!(name: "A", classification: Classification.second)
#機種のサンプルデータ
Machine.create!(name: "北斗", classification: Classification.first, kind: Kind.first)
Machine.create!(name: "牙狼", classification: Classification.first, kind: Kind.first)                                         
Machine.create!(name: "エヴァ", 　　classification: Classification.first,
　        　　　　　　　　　　　　　　　kind: Kind.first)                                         
Machine.create!(name: "バジリスク", classification: Classification.first,
                            　　　　kind: Kind.first)
Machine.create!(name: "聖闘士星矢", classification: Classification.first,
                    　        　　　kind: Kind.first)                                         
Machine.create!(name: "番長", 　　　classification: Classification.first,
　        　　　　　　　　　　　　　　　kind: Kind.first)                                         

#postのサンプルデータ acquiredのサンプルデータ
users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(word_count: 5)
  users.each do |user| 
    post = user.posts.create!(content: content,
                              machine: Machine.first,
                                 kind: Kind.first,
                       classification: Classification.first) 
    post.acquireds.create!(number: 10000, unit: "枚")
  end
end


