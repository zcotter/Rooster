require 'test_helper'

class JobControllerTest < ActionController::TestCase
  test "should get wake_scheduled" do
    get :wake_scheduled
    assert_response :success
  end

end
