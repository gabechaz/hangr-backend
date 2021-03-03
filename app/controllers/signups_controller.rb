class SignupsController < ApplicationController
    def create
        s = Signup.create(signup_params)
        if s.id
            render json: s
        else
            render json: s.errors.full_messages
        end
    end

    private

    def signup_params
        params.permit(:hang_id, :user_id)
    end
end
