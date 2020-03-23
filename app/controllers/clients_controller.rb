class ClientsController < ApplicationController
    def index
        clients = Client.all
        render json: clients
    end

    def show
        client = Client.find_by(id: params[:id])
        render json: client
    end

    def create
        client = Client.create(client_params)
        render json: client
    end

    def destroy
        client = Client.find(params[:id])
        client.destroy
    end

    private

    def client_params
        params.require(:client).permit(:name, :vip, :city, :state, :twitter, :facebook, :instagram, :snapchat)
    end

end
