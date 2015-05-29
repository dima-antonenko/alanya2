require 'test_helper'

class ProjectApplicationMailsControllerTest < ActionController::TestCase
  setup do
    @project_application_mail = project_application_mails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_application_mails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_application_mail" do
    assert_difference('ProjectApplicationMail.count') do
      post :create, project_application_mail: {  }
    end

    assert_redirected_to project_application_mail_path(assigns(:project_application_mail))
  end

  test "should show project_application_mail" do
    get :show, id: @project_application_mail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_application_mail
    assert_response :success
  end

  test "should update project_application_mail" do
    patch :update, id: @project_application_mail, project_application_mail: {  }
    assert_redirected_to project_application_mail_path(assigns(:project_application_mail))
  end

  test "should destroy project_application_mail" do
    assert_difference('ProjectApplicationMail.count', -1) do
      delete :destroy, id: @project_application_mail
    end

    assert_redirected_to project_application_mails_path
  end
end
