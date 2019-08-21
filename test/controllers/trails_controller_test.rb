require 'test_helper'

class TrailsControllerTest < ActionDispatch::IntegrationTest
  
  test "should get trails by location" do
    get '/api/v1/trails-by-location?lat=10&lon=10&distance=10&results=10', as: :json
    assert_response :success
  end

  test "should get trails by id" do
    get '/api/v1/trails-by-ids?ids=7010895'
    assert_response :success
  end

end
