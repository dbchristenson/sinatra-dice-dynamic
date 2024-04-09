require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:number_of_dice/:number_of_sides") do
  @number_of_dice = params.fetch("number_of_dice").to_i
  @number_of_sides = params.fetch("number_of_sides").to_i
  @rolls = []

  @number_of_dice.times do
    die = rand(1..@number_of_sides)
    @rolls.push(die)
  end

  erb(:flexible)
end
