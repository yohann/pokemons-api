Rails.application.routes.draw do
  get 'pokemons', to: "pokemons#index"
  get 'pokemons/:pokemon_name', to: "pokemons#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
