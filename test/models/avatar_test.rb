require 'test_helper'

class AvatarTest < ActiveSupport::TestCase
    setup do
        @avatar = avatars(:one)
    end

    teardown do
        Rails.cache.clear
    end
    
    test "avatars have users" do
        assert @avatar.users
    end
end