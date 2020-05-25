require 'test_helper'

class ShepherdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shepherd = shepherds(:one)
  end

  test "should get index" do
    get shepherds_url
    assert_response :success
  end

  test "should get new" do
    get new_shepherd_url
    assert_response :success
  end

  test "should create shepherd" do
    assert_difference('Shepherd.count') do
      post shepherds_url, params: { shepherd: { first_name: @shepherd.first_name, last_name: @shepherd.last_name } }
    end

    assert_redirected_to shepherd_url(Shepherd.last)
  end

  test "should show shepherd" do
    get shepherd_url(@shepherd)
    assert_response :success
  end

  test "should get edit" do
    get edit_shepherd_url(@shepherd)
    assert_response :success
  end

  test "should update shepherd" do
    patch shepherd_url(@shepherd), params: { shepherd: { first_name: @shepherd.first_name, last_name: @shepherd.last_name } }
    assert_redirected_to shepherd_url(@shepherd)
  end

  test "should destroy shepherd" do
    assert_difference('Shepherd.count', -1) do
      delete shepherd_url(@shepherd)
    end

    assert_redirected_to shepherds_url
  end
end
