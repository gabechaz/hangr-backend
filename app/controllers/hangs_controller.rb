class HangsController < ApplicationController

    def index
        hangs = Hang.all
        render json: hangs
    end

    def create
        hang = Hang.create(hang_params)
        if hang.id?
        render json: hang
        else 
            render json: hang.errors.full_messages
        end
    end

    def show
        hang = Hang.find(params[:id])
        render json: hang
    end

    def rsvp
        hang = Hang.find(params[:id])
        hang.update(rsvp_params)
        render json: hang
    end


    private

    def hang_params
        params.permit(:user_id, :location, :time, :people_needed, :hang, :game, :game_name, :time_string, :game_image)
    end

    def rsvp_params
        params.permit(:people_needed, :hang, :id)
    end
end
