class PokemonsService
  POKEAPI_URL = 'https://pokeapi.co/api/v2/pokemon/'
  
  def self.get_pokemons(params = {})
    request = RestClient.get(POKEAPI_URL, params: params.to_h)
    JSON.parse request.body
  end

  def self.get(pokemon_name)
    pokemon_name.downcase!
    request = RestClient.get(POKEAPI_URL + pokemon_name)
    JSON.parse request.body
  end
end