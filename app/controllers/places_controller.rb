class PlacesController < ApplicationController
    def index
        @places = Place.all
    end

    # def show
    #     @place = Place.find(params[:id])
    #     redirect_to "/posts?place_id="+@place.id
    # end

    def show
        @place = Place.find(params["id"])
    end

    def new
        @place = Place.new
    end

    def create
        #@company = Company.new(params["company"])
        @place = Place.new(params.require(:place).permit(:name))
        @place.save
        redirect_to "/places"

    end

    def edit
        @place = Place.find(params["id"])
    end

    def update
        @place = Place.find(params["id"])
        @place.update(params["place"])
        redirect_to "/places"
    end

    def destroy
        @place = Place.find(params["id"])
        @place.destroy
        redirect_to "/places"
    end
    
end
