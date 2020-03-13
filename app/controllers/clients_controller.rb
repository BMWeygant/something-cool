class ClientsController < ApplicationController
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

    def client_params
        params.require(:client).permit(:name, :vip, :city, :state, :twitter, :facebook, :instagram, :snapchat)
    end

end
