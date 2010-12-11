require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "Username should be at least 4 characters long" do 
    u = User.new(:username=>"abc")
    assert !u.valid?
    assert_equal ["is too short (minimum is 4 characters)"], u.errors[:username]
  end
  
  test "Username should not be greater than 14 characters long" do 
    u = User.new(:username=>"123456789012345")
    assert !u.valid?
    assert_equal ["is too long (maximum is 14 characters)"], u.errors[:username]
  end

  test "Username is required" do 
    u = User.new(:username=>nil)
    assert !u.valid?
    assert_equal ["is too short (minimum is 4 characters)"], u.errors[:username]
  end
  
  
end
