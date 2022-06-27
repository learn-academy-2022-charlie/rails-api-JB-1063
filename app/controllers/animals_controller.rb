class AnimalsController < ApplicationController

    def index
        animals = Animal.all
        render json: animals
    end

    def show
        animals = Animal.find(params[:id])
        render json: animal
    end

    def create
        animals = Animal.create(animal_params)
        if animals.valid?
        render json: animals
        else
            render json: animals.errors
        end
    end

    private
    def animal_params
        params.require(:animal).permit(:common_name, :latin_name, :kingdom)
    end

end
