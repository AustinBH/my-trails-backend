require 'test_helper'

class AvatarTest < ActiveSupport::TestCase
    setup do
        @avatar = avatars(:one)
    end
    
    test "avatars have users" do
        assert @avatar.users
    end

    test "should not save without an img_url" do
        avatar = Avatar.new(name: 'test')
        assert !avatar.save, 'Saved avatar without an img_url'
    end

    test "should not save without a name" do
        avatar = Avatar.new(img_url: 'test')
        assert !avatar.save, 'Saved avatar without a name'
    end

end