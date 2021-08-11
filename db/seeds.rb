50.times do
  User.create!(email: Faker::Internet.email, password:'admin1234')
end

100.times do 
  random_user = User.all.sample
  Event.create!(title: Faker::Lorem.sentence(word_count: 4),creator_id:random_user.id)
end

20.times do 
  random_user = User.all.sample
  random_event = Event.all.sample
  Invitation.create!(date:Time.now+1.months, user_id:random_user.id, event_id:random_event.id)
end

20.times do 
  random_user = User.all.sample
  random_event = Event.all.sample
  Invitation.create!(date:Time.now-1.months, user_id:random_user.id, event_id:random_event.id)
end