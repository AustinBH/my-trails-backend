require 'test_helper'

class LikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @like = likes(:one)
  end

  teardown do
    Rails.cache.clear
  end

  test "should not get index" do
    get '/api/v1/likes', as: :json
    assert_response 401
  end

  test "should not create like" do
    assert_difference('Like.count', 0) do
      post '/api/v1/likes', params: { like: {  } }, as: :json
    end

    assert_response 401
  end

  test "should not destroy like" do
    assert_difference('Like.count', 0) do
      delete '/api/v1/likes', as: :json
    end

    assert_response 401
  end
end
