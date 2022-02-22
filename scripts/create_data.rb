Place.destroy_all
Post.destroy_all

mexico = Place.new({ name: "Mexico City" })
mexico.save

vegas = Place.new({ name: "Las Vegas" })
vegas.save

hawaii = Place.new({ name: "Hawaii" })
hawaii.save

amsterdam = Place.new({ name: "Amsterdam" })
amsterdam.save

mem1_mexico = Post.new({ 
  title: "Ate tacos", 
  description: "Enjoyed eating tacos", 
  posted_on: Date.new(2022,2,3),
  place_id: mexico.id
})
mem1_mexico.save

mem2_mexico = Post.new({ 
  title: "Roamed around Mexican city", 
  description: "It was super fun with such large gang", 
  posted_on: Date.new(2022,2,3),
  place_id: mexico.id
})
mem2_mexico.save

mem1_vegas = Post.new({ 
  title: "Casino", 
  description: "Gambled in casino", 
  posted_on: Date.new(2021,2,3),
  place_id: vegas.id
})
mem1_vegas.save

mem2_vegas = Post.new({ 
  title: "Stayed in Venetian Resorts", 
  description: "It was luxurious and has amazing brunch", 
  posted_on: Date.new(2021,2,4),
  place_id: vegas.id
})
mem2_vegas.save

mem1_hawaii = Post.new({ 
  title: "Beaches", 
  description: "Hawaii beaches are amazing!!", 
  posted_on: Date.new(2021,8,3),
  place_id: hawaii.id
})
mem1_hawaii.save

mem2_hawaii = Post.new({ 
  title: "Scuba Diving", 
  description: "Was scared intially but had fun later", 
  posted_on: Date.new(2021,8,4),
  place_id: hawaii.id
})
mem2_hawaii.save

puts "There are now #{Place.all.count} places and #{Post.all.count} posts."
