require 'test_helper'

class BijousControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bijou = bijous(:one)
  end

  test "should get index" do
    get bijous_url
    assert_response :success
  end

  test "should get new" do
    get new_bijou_url
    assert_response :success
  end

  test "should create bijou" do
    assert_difference('Bijou.count') do
      post bijous_url, params: { bijou: { description: @bijou.description, name: @bijou.name } }
    end

    assert_redirected_to bijou_url(Bijou.last)
  end

  test "should show bijou" do
    get bijou_url(@bijou)
    assert_response :success
  end

  test "should get edit" do
    get edit_bijou_url(@bijou)
    assert_response :success
  end

  test "should update bijou" do
    patch bijou_url(@bijou), params: { bijou: { description: @bijou.description, name: @bijou.name } }
    assert_redirected_to bijou_url(@bijou)
  end

  test "should destroy bijou" do
    assert_difference('Bijou.count', -1) do
      delete bijou_url(@bijou)
    end

    assert_redirected_to bijous_url
  end
end
