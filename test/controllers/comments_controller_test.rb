require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment = comments(:one)
  end
  
  test "should get index" do
    get '/api/v1/comments', as: :json
    assert_response :success
  end

  test "should not create comment" do
    assert_difference 'Comment.count', 0, 'Please log in' do
      post '/api/v1/comments', params: { comment: {  } }, as: :json
    end

    assert_response 401
  end

  test "should not update comment" do
    patch '/api/v1/comments', params: { comment: {  } }, as: :json
    assert_response 401
  end

  test "should destroy comment" do
    assert_difference 'Comment.count', 0, 'Please log in' do
      delete '/api/v1/comments', as: :json
    end

    assert_response 401
  end
end
