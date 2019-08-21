require 'test_helper'

class LikeTest < ActiveSupport::TestCase
    setup do
        @like = likes(:one)
    end

    teardown do
        Rails.cache.clear
    end

    test "should not save same like twice" do
        completed_hike = CompletedHike.new(trail_id: @like.trail_id, user_id: @like.user_id)
        assert !completed_hike.save, 'Saved the like again with the same user'
    end

    test "should not save completed hike without trail" do
        completed_hike = CompletedHike.new(user_id: 1)
        assert !completed_hike.save, 'Saved the like without a trail'
    end
end