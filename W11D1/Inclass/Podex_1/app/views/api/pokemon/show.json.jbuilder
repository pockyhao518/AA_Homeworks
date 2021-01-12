# render all the information about a single pokemon, including its items and moves

json.pokemon do 
    json.extract! @pokemon, :id, :name,:attack, :defense, :poke_type
    json.image_url ("pokemon_snaps/#{@pokemon.image_url}")
end

json.moves do 
    @pokemon.moves.each do |move|
        json.set! move.id do
            json.extract! move, :id, :name
        end
    end
end

json.items do 
    @pokemon.items.each do |item|
        json.set! item.id do
            json.extract! item, :id, :pokemon_id, :name, :price, :happiness, :image_url
        end
    end
end