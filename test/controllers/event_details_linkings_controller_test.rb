require 'test_helper'

class EventDetailsLinkingsControllerTest < ActionController::TestCase
  setup do
    @event_details_linking = event_details_linkings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_details_linkings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_details_linking" do
    assert_difference('EventDetailsLinking.count') do
      post :create, event_details_linking: { event_detail_id: @event_details_linking.event_detail_id, integer: @event_details_linking.integer, integer: @event_details_linking.integer, user_id: @event_details_linking.user_id }
    end

    assert_redirected_to event_details_linking_path(assigns(:event_details_linking))
  end

  test "should show event_details_linking" do
    get :show, id: @event_details_linking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_details_linking
    assert_response :success
  end

  test "should update event_details_linking" do
    patch :update, id: @event_details_linking, event_details_linking: { event_detail_id: @event_details_linking.event_detail_id, integer: @event_details_linking.integer, integer: @event_details_linking.integer, user_id: @event_details_linking.user_id }
    assert_redirected_to event_details_linking_path(assigns(:event_details_linking))
  end

  test "should destroy event_details_linking" do
    assert_difference('EventDetailsLinking.count', -1) do
      delete :destroy, id: @event_details_linking
    end

    assert_redirected_to event_details_linkings_path
  end
end
