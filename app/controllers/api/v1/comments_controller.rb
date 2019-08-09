class Api::V1::CommentsController < ApplicationController

    def index
        if params[:trail_id]
            comments = Comment.find_by(trail_id: params[:trail_id])
            render json: comments
        end
    end
end
