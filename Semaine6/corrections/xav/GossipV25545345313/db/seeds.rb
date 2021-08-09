require 'faker'
require 'regexp-examples'

zips = /\A(([0-8][0-9])|(9[0-5])|(2[ab]))[0-9]{3}\z/.examples
tags = %w( tag1 tag2 tag3 tag4 tag5 tag6 tag7 tag8 tag9 tag10 tag11)
30.times do |i|
    city = City.create(name: Faker::Address.city, zip_code: zips.sample)
    puts "step City ok" if i == 29
end

20.times do |i|
    usr = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph, email: Faker::Internet.email, age: rand(18..99), city_id: rand(1..20),password: "password")
    puts "user created" if i == 19
end

30.times do |i|
    gossip = Gossip.create!(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph(sentence_count:50), user_id: rand(1..20))
    puts "Gossip created" if i == 29
end

10.times do |i|
    tag = Tag.create!(title:  tags[i])
    puts "tags created" if i == 9
end

50.times do |i|
    join = JoinGossipTag.create!(gossip_id: rand(1..30), tag_id: rand(1..10))
    puts "join gossip and tag table created" if i == 49
end

100.times do |i|
    comment = Comment.create(content: Faker::Lorem.sentence(word_count: 20), gossip_id: rand(1..30), user_id: rand(1..30))
    puts "comments created" if i == 99

end

