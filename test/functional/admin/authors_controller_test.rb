require 'test_helper'

class Admin::AuthorsControllerTest < ActionController::TestCase
  setup do
    @admin_author = admin_authors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_authors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_author" do
    assert_difference('Admin::Author.count') do
      post :create, admin_author: { acronym: @admin_author.acronym, email: @admin_author.email, first_name: @admin_author.first_name, last_name: @admin_author.last_name, nickname: @admin_author.nickname, password_digest: @admin_author.password_digest, remember_token: @admin_author.remember_token }
    end

    assert_redirected_to admin_author_path(assigns(:admin_author))
  end

  test "should show admin_author" do
    get :show, id: @admin_author
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_author
    assert_response :success
  end

  test "should update admin_author" do
    put :update, id: @admin_author, admin_author: { acronym: @admin_author.acronym, email: @admin_author.email, first_name: @admin_author.first_name, last_name: @admin_author.last_name, nickname: @admin_author.nickname, password_digest: @admin_author.password_digest, remember_token: @admin_author.remember_token }
    assert_redirected_to admin_author_path(assigns(:admin_author))
  end

  test "should destroy admin_author" do
    assert_difference('Admin::Author.count', -1) do
      delete :destroy, id: @admin_author
    end

    assert_redirected_to admin_authors_path
  end
end
