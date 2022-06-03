require 'rails_helper'

RSpec.describe "Pokemons", type: :request do
  describe "GET /pokemons/:pokemon_name" do
    let(:path) { "/pokemons/" }
  
    before do
      pokemon_name = PokemonsService.get_pokemons["results"][Faker::Number.between(from: 0, to: 19)]["name"]
      get path + pokemon_name
    end

    it "returns 200 OK" do
      expect(response).to be_successful
    end
    
    it "has a name" do
      expect(JSON.parse(response.body)["name"]).to be_present
    end
  end
end
