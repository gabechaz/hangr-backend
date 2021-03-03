class ActivitiesController < ApplicationController

    def index
        acts = Activity.all
        render json: acts
    end

    def show 
        act = Activity.find(params[:id])
        render json: act
    end

end
