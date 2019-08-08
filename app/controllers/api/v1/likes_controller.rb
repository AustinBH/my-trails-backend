class Api::V1::LikesController < ApplicationController
    def create
        like = Like.new(like_params)
        if like.save
            render json: {like: LikeSerializer.new(like)}, status: :accepted
        else
            render json: {error: like.errors}, status: :error
        end
    end

    private
    def like_params
        params.require(:like).permit(:user_id, :trail_id)
    end
end
