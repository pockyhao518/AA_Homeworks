class Api::PokemonController < ApplicationController

    def index
        @pokemon = Pokemon.all
        render :index # will find from api, index
    end

    # def create
    #     @pokemon = Pokemon.new(pokemon_params)
    #     if @pokemon.save!
    #         render :show
    #     else 
    #         render json: @pokemon.errors.full_messages, status: 404
    #         # pass error to json, then json will render it
    #     end
    # end

    def show
        @pokemon = Pokemon.find(params[:id])
        render :show
    end

    private

    def pokemon_params 
        params.require(:pokemon).permit(:name, :attack, :defense, :poke_type, :image_url)
    end

end
