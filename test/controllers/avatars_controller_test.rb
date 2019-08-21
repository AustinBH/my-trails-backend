require 'test_helper'

class AvatarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @avatar = avatars(:one)
  end

  teardown do
    Rails.cache.clear
  end

  test "should get index" do
    get '/api/v1/avatars', as: :json
    assert_response :success
  end
end
