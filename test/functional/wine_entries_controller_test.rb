require 'test_helper'

class WineEntriesControllerTest < ActionController::TestCase
  setup do
    @wine_entry = wine_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wine_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wine_entry" do
    assert_difference('WineEntry.count') do
      post :create, :wine_entry => @wine_entry.attributes
    end

    assert_redirected_to wine_entry_path(assigns(:wine_entry))
  end

  test "should show wine_entry" do
    get :show, :id => @wine_entry.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @wine_entry.to_param
    assert_response :success
  end

  test "should update wine_entry" do
    put :update, :id => @wine_entry.to_param, :wine_entry => @wine_entry.attributes
    assert_redirected_to wine_entry_path(assigns(:wine_entry))
  end

  test "should destroy wine_entry" do
    assert_difference('WineEntry.count', -1) do
      delete :destroy, :id => @wine_entry.to_param
    end

    assert_redirected_to wine_entries_path
  end
end
