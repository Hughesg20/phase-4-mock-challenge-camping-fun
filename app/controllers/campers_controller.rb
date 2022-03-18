class CampersController < ApplicationController

    def index
        campers = Camper.all
        render json: campers
    end

    def show
        campers = Camper.find_by(id:params[:id])
        render json:campers
    end

    def create 
        campers = Camper.create!(camper_params)
        render json: campers
    end

    private

    def camper_params
        params.permit(:name, :age)
    end
end
