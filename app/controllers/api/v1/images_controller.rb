class Api::V1::ImagesController < ApplicationController
    def index
        if params[:trail_id]
            images = Image.where(trail_id: params[:trail_id])
            render json: images, status: :accepted
        end
    end

    def create
        #Will need to also save image to hosting site (aws)
        image = Image.new(image_params)
        if image.save
            render json: {image: ImageSerializer.new(image)}, status: :accepted
        else
            render json: {error: image.errors}, status: :error
        end
    end

    def delete
        image = Image.find_by(image_params[:id])
        image.delete
        render json: {message: 'Image deleted successfully'}, status: :accepted
    end

    private
    def image_params
        params.require(:image).permit(:user_id, :trail_id, :img_url, :id)
    end
end
