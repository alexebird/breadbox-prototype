require 'test_helper'

class ProvidedFoodsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:provided_foods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create provided_food" do
    assert_difference('ProvidedFood.count') do
      post :create, :provided_food => provided_foods(:bread).attributes
    end

    assert_redirected_to provided_food_path(assigns(:provided_food))
  end

  test "should show provided_food" do
    get :show, :id => provided_foods(:bread).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => provided_foods(:bread).to_param
    assert_response :success
  end

  test "should update provided_food" do
    put :update, :id => provided_foods(:bread).to_param, :provided_food => provided_foods(:bread).attributes
    assert_redirected_to provided_food_path(assigns(:provided_food))
  end

  test "should destroy provided_food" do
    assert_difference('ProvidedFood.count', -1) do
      delete :destroy, :id => provided_foods(:bread).to_param
    end

    assert_redirected_to provided_foods_path
  end
end
