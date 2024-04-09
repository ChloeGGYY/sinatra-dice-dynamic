require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end



get("/dice/:zebra/:bear") do
  @num_dice = params.fetch("zebra").to_i
  @dice_type = params.fetch("bear").to_i
  
  @rolls = []

  @num_dice.times do
    die = rand(1..@dice_type)

    @rolls.push(die)
  end

  erb(:flexible)
end
