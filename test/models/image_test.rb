require 'test_helper'

class ImageTest < ActiveSupport::TestCase
    setup do
        @image = images(:one)
    end

    teardown do
        Rails.cache.clear
    end

    test "should not save image without user" do
        image = Image.new(img_url: 'test', trail_id: 1)
        assert !image.save, 'Saved image without a user'
    end

    test "should not save image without trail" do
        image = Image.new(img_url: 'test', user_id: 1)
        assert !image.save, 'Saved image without a trail'
    end
end