require 'test_helper'

class SquawksControllerTest < ActionController::TestCase
  setup do
    @squawk = squawks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:squawks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create squawk" do
    assert_difference('Squawk.count') do
      post :create, squawk: { content: @squawk.content, name: @squawk.name, title: @squawk.title }
    end

    assert_redirected_to squawk_path(assigns(:squawk))
  end

  test "should show squawk" do
    get :show, id: @squawk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @squawk
    assert_response :success
  end

  test "should update squawk" do
    patch :update, id: @squawk, squawk: { content: @squawk.content, name: @squawk.name, title: @squawk.title }
    assert_redirected_to squawk_path(assigns(:squawk))
  end

  test "should destroy squawk" do
    assert_difference('Squawk.count', -1) do
      delete :destroy, id: @squawk
    end

    assert_redirected_to squawks_path
  end
end
