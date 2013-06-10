require 'test_helper'

class CabareticpagesControllerTest < ActionController::TestCase
  setup do
    @cabareticpage = cabareticpages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cabareticpages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cabareticpage" do
    assert_difference('Cabareticpage.count') do
      post :create, cabareticpage: {  }
    end

    assert_redirected_to cabareticpage_path(assigns(:cabareticpage))
  end

  test "should show cabareticpage" do
    get :show, id: @cabareticpage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cabareticpage
    assert_response :success
  end

  test "should update cabareticpage" do
    put :update, id: @cabareticpage, cabareticpage: {  }
    assert_redirected_to cabareticpage_path(assigns(:cabareticpage))
  end

  test "should destroy cabareticpage" do
    assert_difference('Cabareticpage.count', -1) do
      delete :destroy, id: @cabareticpage
    end

    assert_redirected_to cabareticpages_path
  end
end
