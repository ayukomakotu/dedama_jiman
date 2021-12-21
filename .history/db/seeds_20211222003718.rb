# メインのサンプルユーザーを1人作成する
User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             encrypted_password: SecureRandom.hex(60),
             confirmation_token: SecureRandom.hex(10),
             confirmed_at: 1.hour.ago,
             confirmed_sent_at: Time.zone.now)

# 追加のユーザーをまとめて生成する
#99.times do |n|
 #   name  = Faker::Name.name
  #  email = "example-#{n+1}@railstutorial.org"
   # password = "password"
   # User.create!(name:  name,
    #             email: email,
     #            password:              password,
      #           password_confirmation: password)
  #end