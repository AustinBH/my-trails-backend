class Api::V1::CommentsController < ApplicationController

    def index
        if params[:trail_id]
            comments = Comment.where(trail_id: params[:trail_id])
            render json: comments
        end
    end

    def create
        comment = Comment.new(comment_params)
        if comment.save
            render json: comment
        else
            render json: {error: 'Incorrect comment submission'}, status: :not_acceptable
        end
    end

    def update
        comment = Comment.find(comment_params[:id])
        if comment.update(content: comment_params[:content])
            render json: comment
        else
            render json: {error: 'Incorrect comment submission'}, status: :not_acceptable
        end
    end

    private
    def comment_params
        params.require(:comment).permit(:content, :user_id, :trail_id, :id)
    end
end
