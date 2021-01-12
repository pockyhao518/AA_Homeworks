# Jbuilder allows us to curate our data, retrieving only the attributes we are interested in

@pokemon.each do |poke|
    json.set! poke.id do
        json.extract! poke, :id, :name
        json.image_url asset_path("pokemon_snaps/#{poke.image_url}")
        # asset_path helper to find the correct path to the image. 
        # Asset locations can be different in production 
        # so you should always use asset_path rather than a literal path
    end 
end