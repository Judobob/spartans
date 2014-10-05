require 'test_helper'

class EventDetailsControllerTest < ActionController::TestCase
  setup do
    @event_detail = event_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_detail" do
    assert_difference('EventDetail.count') do
      post :create, event_detail: { description: @event_detail.description, max_participants: @event_detail.max_participants, name: @event_detail.name, picture: @event_detail.picture, venue: @event_detail.venue }
    end

    assert_redirected_to event_detail_path(assigns(:event_detail))
  end

  test "should show event_detail" do
    get :show, id: @event_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_detail
    assert_response :success
  end

  test "should update event_detail" do
    patch :update, id: @event_detail, event_detail: { description: @event_detail.description, max_participants: @event_detail.max_participants, name: @event_detail.name, picture: @event_detail.picture, venue: @event_detail.venue }
    assert_redirected_to event_detail_path(assigns(:event_detail))
  end

  test "should destroy event_detail" do
    assert_difference('EventDetail.count', -1) do
      delete :destroy, id: @event_detail
    end

    assert_redirected_to event_details_path
  end
end
