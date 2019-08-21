require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should create user" do
    assert_difference('User.count') do
      post '/api/v1/users', params: { user: { username: 'test', password: '123', distance: 20, results: 20 } }, as: :json
    end

    assert_response 201
  end

  test "should not show user" do
    get '/api/v1/account', as: :json
    assert_response 401
  end

  test "should not update user" do
    patch '/api/v1/account', params: { user: {  } }, as: :json
    assert_response 401
  end

  test "should not destroy user" do
    delete '/api/v1/account', as: :json

    assert_response 401
  end
end
