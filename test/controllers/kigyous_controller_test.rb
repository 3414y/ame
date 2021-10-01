require "test_helper"

class KigyousControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kigyou = kigyous(:one)
  end

  test "should get index" do
    get kigyous_url
    assert_response :success
  end

  test "should get new" do
    get new_kigyou_url
    assert_response :success
  end

  test "should create kigyou" do
    assert_difference('Kigyou.count') do
      post kigyous_url, params: { kigyou: { hyoutei: @kigyou.hyoutei, kennnai: @kigyou.kennnai, khp: @kigyou.khp, kigyoumei: @kigyou.kigyoumei, syokusyu_id: @kigyou.syokusyu_id } }
    end

    assert_redirected_to kigyou_url(Kigyou.last)
  end

  test "should show kigyou" do
    get kigyou_url(@kigyou)
    assert_response :success
  end

  test "should get edit" do
    get edit_kigyou_url(@kigyou)
    assert_response :success
  end

  test "should update kigyou" do
    patch kigyou_url(@kigyou), params: { kigyou: { hyoutei: @kigyou.hyoutei, kennnai: @kigyou.kennnai, khp: @kigyou.khp, kigyoumei: @kigyou.kigyoumei, syokusyu_id: @kigyou.syokusyu_id } }
    assert_redirected_to kigyou_url(@kigyou)
  end

  test "should destroy kigyou" do
    assert_difference('Kigyou.count', -1) do
      delete kigyou_url(@kigyou)
    end

    assert_redirected_to kigyous_url
  end
end
