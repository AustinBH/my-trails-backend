class Api::V1::ImagesController < ApplicationController
    def index
        if params[:trail_id]
            images = Image.where(trail_id: params[:trail_id])
            render json: images, status: :accepted
        end
    end

    def create
        #Will need to also save image to hosting site (aws)
        puts image_params[:file]
        puts prepare_file(image_params[:file])
        render json: prepare_file(image_params[:file])

        # s3 = Aws::S3::Resource.new
        # obj = s3.bucket(S3_BUCKET).object(filename)
        # obj.upload_file(filepath)
        # prepare_file(image_params[:file])
        # image = Image.new(image_params)
        # if image.save
        #     render json: {image: ImageSerializer.new(image)}, status: :accepted
        # else
        #     render json: {error: image.errors}, status: :error
        # end
    end

    def delete
        image = Image.find(image_params[:id])
        image.delete
        render json: {message: 'Image deleted successfully'}, status: :accepted
    end

    private
    def image_params
        params.require(:image).permit(:user_id, :trail_id, :img_url, :id, :file)
    end

    def prepare_file(data)
        start_date = 2.months.ago.strftime("%Y%m%d")
        end_date = 3.months.ago.strftime("%Y%m%d")

        filename = "#{start_date}-#{end_date}.json"
        file = File.open(File.join(Dir.pwd, '/tmp', filename), "w")
        file.puts(data.to_json)
        file.close
        file
    end
end
