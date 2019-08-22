require 'test_helper'

class ImageTest < ActiveSupport::TestCase
    setup do
        @image = images(:one)
    end

    test "should not save image without user" do
        image = Image.new(img_url: 'test', trail_id: 1)
        assert !image.save, 'Saved image without a user'
    end

    test "should not save image without trail" do
        image = Image.new(img_url: 'test', user_id: 1)
        assert !image.save, 'Saved image without a trail'
    end

    test "should not save image without an img_url" do
        image = Image.new(trail_id: 1, user_id: 1)
        assert !image.save, 'Saved image without an img_url'
    end
end