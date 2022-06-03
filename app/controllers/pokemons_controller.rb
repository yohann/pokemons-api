class PokemonsController < ApplicationController
  
  def index
    begin
      render json: PokemonsService.get_pokemons(pokemon_params)
    rescue RestClient::NotFound
      head :not_found
    end
  end

  def show
    begin
      render json: PokemonsService.get(pokemon_params[:pokemon_name])
    rescue RestClient::NotFound
      head :not_found
    end
  end
  
  def pokemon_params
    params.permit :pokemon_name, :offset, :limit
  end
end
