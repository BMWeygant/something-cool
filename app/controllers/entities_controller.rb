class EntitiesController < ApplicationController
    def index
    end

    def show
    end

    def new
    end

    def create
    end

    def update
    end

    def destroy
    end

    private

    def entity_params
        params.require(:entity).permit(:name, :industry, :description, :services, :website, :phone, :email, :city, :state, :twitter, :facebook, :instagram, :snapchat)
    end
end
