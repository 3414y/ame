require "test_helper"

class SyokusyusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @syokusyu = syokusyus(:one)
  end

  test "should get index" do
    get syokusyus_url
    assert_response :success
  end

  test "should get new" do
    get new_syokusyu_url
    assert_response :success
  end

  test "should create syokusyu" do
    assert_difference('Syokusyu.count') do
      post syokusyus_url, params: { syokusyu: { syokusyumei: @syokusyu.syokusyumei } }
    end

    assert_redirected_to syokusyu_url(Syokusyu.last)
  end

  test "should show syokusyu" do
    get syokusyu_url(@syokusyu)
    assert_response :success
  end

  test "should get edit" do
    get edit_syokusyu_url(@syokusyu)
    assert_response :success
  end

  test "should update syokusyu" do
    patch syokusyu_url(@syokusyu), params: { syokusyu: { syokusyumei: @syokusyu.syokusyumei } }
    assert_redirected_to syokusyu_url(@syokusyu)
  end

  test "should destroy syokusyu" do
    assert_difference('Syokusyu.count', -1) do
      delete syokusyu_url(@syokusyu)
    end

    assert_redirected_to syokusyus_url
  end
end
