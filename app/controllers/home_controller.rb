class HomeController < ApplicationController

  def index
    #trainerless_pokemon = Pokemon.where(trainer:nil)
    
    #Question1 
    trainerless_pokemon = Pokemon.where(trainer_id:nil)
    
    @pokemon = trainerless_pokemon.sample
  end

end
