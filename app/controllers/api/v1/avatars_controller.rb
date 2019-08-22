class Api::V1::AvatarsController < ApplicationController

    def index
        avatars = Avatar.all
        render json: avatars, status: :accepted
    end
end