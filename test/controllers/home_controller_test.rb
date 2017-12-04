require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should login" do #get form login
    get home_url
    assert_response :success
  end

  test "should masuk" do #post form login masuk
    post home_url, params: { user: { username: 'bebas', password:'sadojw2e93e9wzZA3' } }
    assert_redirected_to home_path
  end

  test "should destroy" do #logout
    assert_difference('User.count', 0) do
      delete logout_url(@user)
    end

    assert_redirected_to home_path
  end
end
