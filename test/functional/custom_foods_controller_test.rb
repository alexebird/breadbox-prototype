require 'test_helper'

class CustomFoodsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:custom_foods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custom_food" do
    assert_difference('CustomFood.count') do
      post :create, :custom_food => custom_foods(:one).attributes
    end

    assert_redirected_to custom_food_path(assigns(:custom_food))
  end

  test "should show custom_food" do
    get :show, :id => custom_foods(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => custom_foods(:one).to_param
    assert_response :success
  end

  test "should update custom_food" do
    put :update, :id => custom_foods(:one).to_param, :custom_food => custom_foods(:one).attributes
    assert_redirected_to custom_food_path(assigns(:custom_food))
  end

  test "should destroy custom_food" do
    assert_difference('CustomFood.count', -1) do
      delete :destroy, :id => custom_foods(:one).to_param
    end

    assert_redirected_to custom_foods_path
  end
end
