require 'test_helper'

class CompletedHikeTest < ActiveSupport::TestCase
    setup do
        @completed_hike = completed_hikes(:one)
    end

    teardown do
        Rails.cache.clear
    end

    test "should not save same completed hike twice" do
        completed_hike = CompletedHike.new(trail_id: @completed_hike.trail_id, user_id: @completed_hike.user_id)
        assert !completed_hike.save, 'Saved the completed hike again'
    end

    test "should not save completed hike without trail" do
        completed_hike = CompletedHike.new(user_id: 1)
        assert !completed_hike.save, 'Saved the completed hike without a trail'
    end
end