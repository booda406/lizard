require 'test_helper'

class LizdsControllerTest < ActionController::TestCase
  setup do
    @lizd = lizds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lizds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lizd" do
    assert_difference('Lizd.count') do
      post :create, lizd: {  }
    end

    assert_redirected_to lizd_path(assigns(:lizd))
  end

  test "should show lizd" do
    get :show, id: @lizd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lizd
    assert_response :success
  end

  test "should update lizd" do
    patch :update, id: @lizd, lizd: {  }
    assert_redirected_to lizd_path(assigns(:lizd))
  end

  test "should destroy lizd" do
    assert_difference('Lizd.count', -1) do
      delete :destroy, id: @lizd
    end

    assert_redirected_to lizds_path
  end
end
