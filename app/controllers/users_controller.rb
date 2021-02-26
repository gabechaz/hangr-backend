class UsersController < ApplicationController


    def show
        user = User.find(params[:id])
        render json: user
    end

    def login
        user = User.find_by(username: params[:username])
    
        if user && user.authenticate(params[:password])
          @current_user = user
          render json: user
        else
          render json: {errors: ['Try again loser!']}
        end
    
      end


      def logout
        @current_user = nil
      end

      def me
        user = @current_user
        render json: user
      end
end
