class Api::V1::UsersController < ApplicationController
    before_action :authorized, except: [:create]
    def account
        render json: {user: UserSerializer.new(current_user)}, status: :accepted
    end

    def create
        user = User.new(username: user_params[:username], password: user_params[:password], distance: user_params[:distance], results: user_params[:results], avatar_id: 1)
        if user.save
            # Create a JWT token
            token = encode_token(user_id: user.id)
            render json: {user: UserSerializer.new(user), jwt: token}, status: :created
        else
            render json: {error: 'That username is taken'}, status: :not_acceptable
        end
    end

    def update
        user = current_user
        # Need to check that the user provided the correct password
        if user.authenticate(user_params[:password])
            # We want to update with a new password if the user provided one
            if user_params[:new_password]
                user.update(username: user_params[:username], password: user_params[:new_password], results: user_params[:results], distance: user_params[:distance], avatar_id: user_params[:avatar_id])
            else
                user.update(user_params)
            end
            render json: {user: UserSerializer.new(user)}, status: :accepted
        else 
            render json: {error: 'Please enter the correct information'}, status: :not_acceptable
        end
    end

    def delete
        # Need to double check that the user provided the correct password
        if current_user.authenticate(user_params[:password])
            current_user.destroy
            render json: {message: 'User deleted successfully'}, status: :accepted
        else
            render json: {error: 'Please enter the correct information'}, status: :not_acceptable
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password, :new_password, :distance, :results, :avatar_id)
    end
end
