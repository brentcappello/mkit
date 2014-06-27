require 'test_helper'

class MarathonsControllerTest < ActionController::TestCase
  setup do
    @marathon = marathons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marathons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marathon" do
    assert_difference('Marathon.count') do
      post :create, marathon: { city: @marathon.city, country: @marathon.country, description: @marathon.description, event_date: @marathon.event_date, image: @marathon.image, logo: @marathon.logo, map: @marathon.map, name: @marathon.name, registration_url: @marathon.registration_url, state: @marathon.state, website_url: @marathon.website_url }
    end

    assert_redirected_to marathon_path(assigns(:marathon))
  end

  test "should show marathon" do
    get :show, id: @marathon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @marathon
    assert_response :success
  end

  test "should update marathon" do
    patch :update, id: @marathon, marathon: { city: @marathon.city, country: @marathon.country, description: @marathon.description, event_date: @marathon.event_date, image: @marathon.image, logo: @marathon.logo, map: @marathon.map, name: @marathon.name, registration_url: @marathon.registration_url, state: @marathon.state, website_url: @marathon.website_url }
    assert_redirected_to marathon_path(assigns(:marathon))
  end

  test "should destroy marathon" do
    assert_difference('Marathon.count', -1) do
      delete :destroy, id: @marathon
    end

    assert_redirected_to marathons_path
  end
end
