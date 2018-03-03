require 'test_helper'

class UserProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_project = user_projects(:one)
  end

  test "should get index" do
    get user_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_user_project_url
    assert_response :success
  end

  test "should create user_project" do
    assert_difference('UserProject.count') do
      post user_projects_url, params: { user_project: { project_id: @user_project.project_id, user_id: @user_project.user_id } }
    end

    assert_redirected_to user_project_url(UserProject.last)
  end

  test "should show user_project" do
    get user_project_url(@user_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_project_url(@user_project)
    assert_response :success
  end

  test "should update user_project" do
    patch user_project_url(@user_project), params: { user_project: { project_id: @user_project.project_id, user_id: @user_project.user_id } }
    assert_redirected_to user_project_url(@user_project)
  end

  test "should destroy user_project" do
    assert_difference('UserProject.count', -1) do
      delete user_project_url(@user_project)
    end

    assert_redirected_to user_projects_url
  end
end
