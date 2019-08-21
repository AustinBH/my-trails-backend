require 'test_helper'

class LocationTest < ActiveSupport::TestCase
    setup do
        @location = locations(:one)
    end

    teardown do
        Rails.cache.clear
    end

    test "locations have a latitude" do
        assert @location.latitude
    end
end