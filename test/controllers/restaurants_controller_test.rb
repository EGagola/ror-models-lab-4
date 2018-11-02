require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  test "should get chef" do
    get restaurants_chef_url
    assert_response :success
  end

  test "should get dish" do
    get restaurants_dish_url
    assert_response :success
  end

end
