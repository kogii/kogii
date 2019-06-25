# coding: utf-8

User.create!(name:                  "Example User",
            email:                  "example@railstutorial.org",
            password:               "foobar",
            password_confirmation:  "foobar",
            admin:      true,
            activated:  true,
            activated_at: Time.zone.now)
99.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password = "password"
    User.create!(name:  name,
                email:  email,
                password:              password,
                password_confirmation: password,
                activated: true,
                activated_at: Time.zone.now)
end

require "csv"

CSV.foreach('db/sitSampleData.csv', headers: true, encoding: 'Shift_JIS:UTF-8') do |row|
#foreachは、ファイル（hoge.csv）の各行を引数として、ブロック(do~endまでを範囲とする『引数のかたまり』)を繰り返し実行する
#rowには、読み込まれた行が代入される

  Timetable.create(name:   row['name'],
                  day:    row['day'],
                  period: row['period'],
                  term:   row['term'],
                  genre:  row['genre'],
                 )
end

