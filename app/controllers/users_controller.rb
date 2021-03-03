class UsersController < ApplicationController
    before_action :authenticate, only: [:me]

    def show
        user = User.find(params[:id])
        render json: user
    end

    def hangs
      user = User.find(params[:id])
      render json: user.hangs
    end

    def login
        user = User.find_by(username: params[:username])
    
        if user && user.authenticate(params[:password])
        token = JWT.encode({user_id: user.id}, 'codename', 'HS256')
          @current_user = user
          render json: {user: user, token: token}
        else
          render json: {errors: ['Invalid username or password']}
        end
    
      end

      def signup
        new_user = User.create(user_params)
        if new_user.id? 
        token = JWT.encode({user_id: user.id}, 'codename', 'HS256')
        render json: {user: new_user, token: token}, status: :created
        else
            render json: new_user.errors.full_messages
        end
      end


      def logout
        @current_user = nil
      end

      def me
        user = @current_user
        render json: user
      end
      
      private
      def user_params
        params.permit(:name, :username, :password)
      end
end
