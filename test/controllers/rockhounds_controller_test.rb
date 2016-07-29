require 'test_helper'

class RockhoundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rockhound = rockhounds(:one)
  end

  test "should get index" do
    get rockhounds_url
    assert_response :success
  end

  test "should get new" do
    get new_rockhound_url
    assert_response :success
  end

  test "should create rockhound" do
    assert_difference('Rockhound.count') do
      post rockhounds_url, params: { rockhound: { email: @rockhound.email, name: @rockhound.name } }
    end

    assert_redirected_to rockhound_url(Rockhound.last)
  end

  test "should show rockhound" do
    get rockhound_url(@rockhound)
    assert_response :success
  end

  test "should get edit" do
    get edit_rockhound_url(@rockhound)
    assert_response :success
  end

  test "should update rockhound" do
    patch rockhound_url(@rockhound), params: { rockhound: { email: @rockhound.email, name: @rockhound.name } }
    assert_redirected_to rockhound_url(@rockhound)
  end

  test "should destroy rockhound" do
    assert_difference('Rockhound.count', -1) do
      delete rockhound_url(@rockhound)
    end

    assert_redirected_to rockhounds_url
  end
end
