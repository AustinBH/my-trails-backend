class Api::V1::ImagesController < ApplicationController
    before_action :authorized
    def index
        if params[:trail_id]
            images = Image.where(trail_id: params[:trail_id])
            render json: images, status: :accepted
        end
    end

    def create
        # Adding the image to S3 bucket
        s3 = Aws::S3::Resource.new
        s3_bucket = s3.bucket(ENV["S3_BUCKET"])
        image_body = Base64.decode64(image_params[:photo_file].split(',')[1])
        image_content = image_params[:photo_file].split(':')[1].split(';').flatten[0]
        image_obj = s3_bucket.object("users/#{image_params[:user_id]}/images/" + (0..8).map { (65 + rand(26)).chr }.join + image_params[:photo_file_name])
        image_obj.put(body: image_body, acl: 'public-read', content_type: image_content, content_encoding: 'base64')

        # Saving the image to the DB
        image = Image.new(user_id: image_params[:user_id], trail_id: image_params[:trail_id], img_url: image_obj.public_url)
        if image.save
            render json: {image: ImageSerializer.new(image)}, status: :accepted
        else
            render json: {error: image.errors}, status: :error
        end
    end

    def delete
        # Deleting the image from DB
        image = Image.find(image_params[:id])
        image.destroy
        render json: {message: 'Image deleted successfully'}, status: :accepted

        # Deleting s3 object when we delete image
        s3 = Aws::S3::Resource.new
        s3_bucket = s3.bucket(ENV["S3_BUCKET"])
        key = image_params[:img_url].split('amazonaws.com/')[1]
        s3_bucket.object(key).delete
    end

    private
    def image_params
        params.require(:image).permit(:user_id, :trail_id, :img_url, :id, :photo_file, :photo_file_name)
    end
end
