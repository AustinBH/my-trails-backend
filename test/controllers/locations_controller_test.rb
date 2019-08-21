require 'test_helper'

class LocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @location = locations(:one)
  end

  teardown do
    Rails.cache.clear
  end

  test "should get index" do
    get '/api/v1/locations', as: :json
    assert_response :success
  end
end
