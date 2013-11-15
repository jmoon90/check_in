require 'test_helper'

class CheckAppsControllerTest < ActionController::TestCase
  setup do
    @check_app = check_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:check_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create check_app" do
    assert_difference('CheckApp.count') do
      post :create, check_app: { first_name: @check_app.first_name, last_name: @check_app.last_name }
    end

    assert_redirected_to check_app_path(assigns(:check_app))
  end

  test "should show check_app" do
    get :show, id: @check_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @check_app
    assert_response :success
  end

  test "should update check_app" do
    patch :update, id: @check_app, check_app: { first_name: @check_app.first_name, last_name: @check_app.last_name }
    assert_redirected_to check_app_path(assigns(:check_app))
  end

  test "should destroy check_app" do
    assert_difference('CheckApp.count', -1) do
      delete :destroy, id: @check_app
    end

    assert_redirected_to check_apps_path
  end
end
