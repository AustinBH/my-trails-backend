require 'test_helper'

class LikeTest < ActiveSupport::TestCase
    setup do
        @like = likes(:one)
    end

    test "should not save like without user" do
        like = Like.new(trail_id: 1)
        assert !like.save, 'Saved the like without a user'
    end

    test "should not save same like twice" do
        like = Like.new(trail_id: @like.trail_id, user_id: @like.user_id)
        assert !like.save, 'Saved the like again with the same user'
    end

    test "should not save like without trail" do
        like = Like.new(user_id: 1)
        assert !like.save, 'Saved the like without a trail'
    end
end