require "test_helper"

class KaitousControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kaitou = kaitous(:one)
  end

  test "should get index" do
    get kaitous_url
    assert_response :success
  end

  test "should get new" do
    get new_kaitou_url
    assert_response :success
  end

  test "should create kaitou" do
    assert_difference('Kaitou.count') do
      post kaitous_url, params: { kaitou: { hentou: @kaitou.hentou, nitiji: @kaitou.nitiji, situmon_id: @kaitou.situmon_id, user_id: @kaitou.user_id } }
    end

    assert_redirected_to kaitou_url(Kaitou.last)
  end

  test "should show kaitou" do
    get kaitou_url(@kaitou)
    assert_response :success
  end

  test "should get edit" do
    get edit_kaitou_url(@kaitou)
    assert_response :success
  end

  test "should update kaitou" do
    patch kaitou_url(@kaitou), params: { kaitou: { hentou: @kaitou.hentou, nitiji: @kaitou.nitiji, situmon_id: @kaitou.situmon_id, user_id: @kaitou.user_id } }
    assert_redirected_to kaitou_url(@kaitou)
  end

  test "should destroy kaitou" do
    assert_difference('Kaitou.count', -1) do
      delete kaitou_url(@kaitou)
    end

    assert_redirected_to kaitous_url
  end
end
