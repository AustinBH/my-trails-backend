require 'test_helper'

class CompletedHikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @completed_hike = completed_hikes(:one)
  end

  test "should not get index" do
    get '/api/v1/completed-hikes', as: :json
    assert_response 401
  end

  test "should not create completed_hike" do
    assert_difference('CompletedHike.count', 0, 'Please log in') do
      post '/api/v1/completed-hikes', params: { completed_hike: {  } }, as: :json
    end

    assert_response 401
  end

  test "should not destroy completed_hike" do
    assert_difference('CompletedHike.count', 0, 'Please log in') do
      delete '/api/v1/completed-hikes', as: :json
    end

    assert_response 401
  end
end
