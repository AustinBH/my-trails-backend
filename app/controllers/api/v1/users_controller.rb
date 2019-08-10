class Api::V1::UsersController < ApplicationController

    def account
        if logged_in?
            render json: {user: UserSerializer.new(current_user)}, status: :accepted
        else
            render json: {error: 'No user could be found'}, status: 401
        end
    end

    def create
        user = User.create(user_params)
        if user.valid?
            token = encode_token(user_id: user.id)
            render json: {user: UserSerializer.new(user), jwt: token}, status: :created
        else
            render json: {error: 'failed to create user'}, status: :not_acceptable
        end
    end

    def update
        if logged_in?
            user = current_user
            if user.authenticate(user_params[:password])
                if user_params[:new_password]
                    user.update(username: user_params[:username], password: user_params[:new_password])
                else
                    user.update(username: user_params[:username], password: user_params[:password])
                end
                render json: {user: UserSerializer.new(user)}, status: :accepted
            else 
                render json: {error: 'Please enter correct information'}, status: :not_acceptable
            end
        else
            render json: {error: 'No user could be found'}, status: 401
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password, :new_password, :distance, :results)
    end
end
