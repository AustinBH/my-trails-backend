require 'test_helper'

class ImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image = images(:one)
  end

  teardown do
    Rails.cache.clear
  end

  test "should not get index" do
    get '/api/v1/images', as: :json
    assert_response 401
  end

  test "should not create image" do
    assert_difference('Image.count', 0) do
      post '/api/v1/images', params: { image: {  } }, as: :json
    end

    assert_response 401
  end

  test "should not destroy image" do
    assert_difference('Image.count', 0) do
      delete '/api/v1/images', as: :json
    end

    assert_response 401
  end
end
