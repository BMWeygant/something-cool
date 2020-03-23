class EntitiesController < ApplicationController
    def index
        entities = Entity.all
        render json: entities
    end

    def show
        entity = Entity.find_by(id: params[:id])
        render json: entity
    end

    def create
        entity = Entity.create(entity_params)
        render json: entity
    end

    def destroy
        entity = Entity.find(params[:id])
        entity.destroy
    end

    private

    def entity_params
        params.require(:entity).permit(:name, :industry, :description, :services, :website, :phone, :email, :city, :state, :twitter, :facebook, :instagram, :snapchat)
    end
end
