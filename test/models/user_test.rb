require 'test_helper'

class UserTest < ActiveSupport::TestCase
    setup do
        @user = users(:one)
    end

    teardown do
        Rails.cache.clear
    end

    test "user has likes" do
        assert @user.likes, 'User does not have likes'
    end

    test "user has comments" do
        assert @user.comments, 'User does not have comments'
    end

    test "user has completed hikes" do
        assert @user.completed_hikes, 'User does not have completed hikes'
    end

    test "user has a username" do
        user = User.new(password: '123', distance: 20, results: 20, avatar_id: 1)
        assert !user.save, 'User was saved without a username'
    end

    test "user has a password" do
        user = User.new(username: '123', distance: 20, results: 20, avatar_id: 1)
        assert !user.save, 'User was saved without a password'
    end

    test "user has a unique username" do
        user = User.new(username: 'test', password: '123', distance: 20, results: 20, avatar_id: 1)
        assert !user.save, 'User was saved with the same username as another user'
    end

    test "user has an avatar" do
        user = User.new(username: 'test1', password: '123', distance: 20, results: 20)
        assert !user.save, 'User was saved without an avatar'
    end
end