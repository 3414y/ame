require "test_helper"

class SyuusyokusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @syuusyoku = syuusyokus(:one)
  end

  test "should get index" do
    get syuusyokus_url
    assert_response :success
  end

  test "should get new" do
    get new_syuusyoku_url
    assert_response :success
  end

  test "should create syuusyoku" do
    assert_difference('Syuusyoku.count') do
      post syuusyokus_url, params: { syuusyoku: { gakka_id: @syuusyoku.gakka_id, gakkoumei: @syuusyoku.gakkoumei, hyoutei: @syuusyoku.hyoutei, kennai: @syuusyoku.kennai, shp: @syuusyoku.shp } }
    end

    assert_redirected_to syuusyoku_url(Syuusyoku.last)
  end

  test "should show syuusyoku" do
    get syuusyoku_url(@syuusyoku)
    assert_response :success
  end

  test "should get edit" do
    get edit_syuusyoku_url(@syuusyoku)
    assert_response :success
  end

  test "should update syuusyoku" do
    patch syuusyoku_url(@syuusyoku), params: { syuusyoku: { gakka_id: @syuusyoku.gakka_id, gakkoumei: @syuusyoku.gakkoumei, hyoutei: @syuusyoku.hyoutei, kennai: @syuusyoku.kennai, shp: @syuusyoku.shp } }
    assert_redirected_to syuusyoku_url(@syuusyoku)
  end

  test "should destroy syuusyoku" do
    assert_difference('Syuusyoku.count', -1) do
      delete syuusyoku_url(@syuusyoku)
    end

    assert_redirected_to syuusyokus_url
  end
end
