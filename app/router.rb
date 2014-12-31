post '/lmgtfy' do
  Lmgtfy.new(params).troll
end

post '/coors' do
  Coors.new(params).beer_me
end