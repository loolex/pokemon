require 'sinatra'
require 'sinatra/activerecord'

set :database, 'sqlite3:///ici-y-a-tous-les-pokemons.db'

# table: pokemons

class Pokemon < ActiveRecord::Base
  belongs_to :dresseur
end

class Dresseur < ActiveRecord::Base
  has_many :pokemons, dependent: :destroy
end

get '/' do
  @pokemons = Pokemon.all
  erb :index
end

get '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :show
end


get '/destroy/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  
  @pokemons = Pokemon.all
  erb :index
end

