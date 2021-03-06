class Api::V1::LikesController < ApplicationController
    before_action :authorized
    def index
        if params[:trail_id]
            likes = Like.where(trail_id: params[:trail_id])
            render json: likes, status: :accepted
        end
    end

    def create
        like = Like.new(like_params)
        if like.save
            render json: {like: LikeSerializer.new(like)}, status: :accepted
        else
            render json: {error: like.errors}, status: :error
        end
    end

    def delete
        like = Like.find_by(like_params)
        like.delete
        render json: {message: 'Like deleted successfully'}, status: :accepted
    end

    private
    def like_params
        params.require(:like).permit(:user_id, :trail_id)
    end
end
