require 'test_helper'

class YearsControllerTest < ActionController::TestCase
  setup do
    @year = years(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create year" do
    assert_difference('Year.count') do
      post :create, year: { completed: @year.completed, date: @year.date, quarter_num: @year.quarter_num, task: @year.task, user_id: @year.user_id }
    end

    assert_redirected_to year_path(assigns(:year))
  end

  test "should show year" do
    get :show, id: @year
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @year
    assert_response :success
  end

  test "should update year" do
    patch :update, id: @year, year: { completed: @year.completed, date: @year.date, quarter_num: @year.quarter_num, task: @year.task, user_id: @year.user_id }
    assert_redirected_to year_path(assigns(:year))
  end

  test "should destroy year" do
    assert_difference('Year.count', -1) do
      delete :destroy, id: @year
    end

    assert_redirected_to years_path
  end
end
