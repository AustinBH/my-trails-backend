require 'test_helper'

class CommentTest < ActiveSupport::TestCase
    setup do
        @comment = comments(:one)
    end

    test "should not save comment without content" do
        comment = Comment.new(user_id: 1, trail_id: 1)
        assert !comment.save, 'Saved the comment without content'
    end

    test "should not save comment without user" do
        comment = Comment.new(trail_id: 1, content: 'test')
        assert !comment.save, 'Saved the comment without a user'
    end

    test "should not save comment without trail" do
        comment = Comment.new(user_id: 1, content: 'test')
        assert !comment.save, 'Saved the comment without a trail'
    end
end