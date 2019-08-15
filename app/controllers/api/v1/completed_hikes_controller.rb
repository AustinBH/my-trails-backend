class Api::V1::CompletedHikesController < ApplicationController
    def index
        if params[:trail_id]
            completed_hikes = CompletedHike.where(trail_id: params[:trail_id])
            render json: completed_hikes, status: :accepted
        end
    end

    def create
        completed_hike = CompletedHike.new(completed_hike_params)
        if completed_hike.save
            render json: {completed_hike: CompletedHikeSerializer.new(completed_hike)}, status: :accepted
        else
            render json: {error: like.errors}, status: :error
        end
    end

    def delete
        completed_hike = CompletedHike.find_by(completed_hike_params)
        completed_hike.delete
        render json: {message: 'Like deleted successfully'}, status: :accepted
    end

    private
    def completed_hike_params
        params.require(:completed_hike).permit(:user_id, :trail_id)
    end
end
