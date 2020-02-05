class PiratesController < ApplicationController
  get '/pirates' do
    @pirates = Pirate.new({})

    erb :'pirates/index'
  end

  post '/pirates' do
    @pirate = Pirate.new(params[:pirate])
    
    params[:ships].each do |ship_hash|
      @pirate.ships << Ship.new(ship_hash)
    end

    
    erb :'pirates/index'
  end
end