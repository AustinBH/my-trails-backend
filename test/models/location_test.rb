require 'test_helper'

class LocationTest < ActiveSupport::TestCase
    setup do
        @location = locations(:one)
    end

    test "locations have a latitude" do
        assert @location.latitude
    end

    test "locations have a longitude" do
        assert @location.longitude
    end

    test "locations cannot be saved without a latitude" do
        location = Location.new(longitude: 10)
        assert !location.save, 'Saved location without a latitude'
    end
    test "locations cannot be saved without a longitude" do
        location = Location.new(latitude: 10)
        assert !location.save, 'Saved location without a longitude'
    end
end