require 'test_helper'

class SowingsControllerTest < ActionController::TestCase
  setup do
    @sowing = sowings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sowings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sowing" do
    assert_difference('Sowing.count') do
      post :create, sowing: { calendar: @sowing.calendar, hydratation: @sowing.hydratation, numSeed: @sowing.numSeed, origin: @sowing.origin, week: @sowing.week, weight: @sowing.weight }
    end

    assert_redirected_to sowing_path(assigns(:sowing))
  end

  test "should show sowing" do
    get :show, id: @sowing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sowing
    assert_response :success
  end

  test "should update sowing" do
    patch :update, id: @sowing, sowing: { calendar: @sowing.calendar, hydratation: @sowing.hydratation, numSeed: @sowing.numSeed, origin: @sowing.origin, week: @sowing.week, weight: @sowing.weight }
    assert_redirected_to sowing_path(assigns(:sowing))
  end

  test "should destroy sowing" do
    assert_difference('Sowing.count', -1) do
      delete :destroy, id: @sowing
    end

    assert_redirected_to sowings_path
  end
end
