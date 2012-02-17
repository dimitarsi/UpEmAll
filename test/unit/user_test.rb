﻿require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "Създаване на потребител с еднакви имена" do
    User.create :password => "dummy_pass",
                :name     => "dummy_name"
     
    assert !User.create :password => "dummy_pass",
                       :name     => "dummy_name"
  end
end
