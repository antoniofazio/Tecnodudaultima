require 'test_helper'

class UserCareersControllerTest < ActionController::TestCase
  setup do
    @user_career = user_careers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_careers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_career" do
    assert_difference('UserCareer.count') do
      post :create, user_career: { career_id: @user_career.career_id, user_id: @user_career.user_id }
    end

    assert_redirected_to user_career_path(assigns(:user_career))
  end

  test "should show user_career" do
    get :show, id: @user_career
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_career
    assert_response :success
  end

  test "should update user_career" do
    put :update, id: @user_career, user_career: { career_id: @user_career.career_id, user_id: @user_career.user_id }
    assert_redirected_to user_career_path(assigns(:user_career))
  end

  test "should destroy user_career" do
    assert_difference('UserCareer.count', -1) do
      delete :destroy, id: @user_career
    end

    assert_redirected_to user_careers_path
  end
end
