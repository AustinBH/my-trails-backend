class Api::V1::AvatarsController < ApplicationController

    def index
        avatars = Avatar.all
        render json: avatars, status: :accepted
    end

    private
    def avatar_params
        params.require(:avatar).permit(:img_url)
    end
end