require 'test_helper'

class AuthsControllerTest < ActionDispatch::IntegrationTest

  test "should create auth" do
    post '/api/v1/login', params: { user: { username: 'test', password: '123'  } }, as: :json

    assert_response :success
  end

end
