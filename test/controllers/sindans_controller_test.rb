require "test_helper"

class SindansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sindan = sindans(:one)
  end

  test "should get index" do
    get sindans_url
    assert_response :success
  end

  test "should get new" do
    get new_sindan_url
    assert_response :success
  end

  test "should create sindan" do
    assert_difference('Sindan.count') do
      post sindans_url, params: { sindan: { hyoutei: @sindan.hyoutei, kennai: @sindan.kennai, sinrosaki: @sindan.sinrosaki, syokusyu: @sindan.syokusyu } }
    end

    assert_redirected_to sindan_url(Sindan.last)
  end

  test "should show sindan" do
    get sindan_url(@sindan)
    assert_response :success
  end

  test "should get edit" do
    get edit_sindan_url(@sindan)
    assert_response :success
  end

  test "should update sindan" do
    patch sindan_url(@sindan), params: { sindan: { hyoutei: @sindan.hyoutei, kennai: @sindan.kennai, sinrosaki: @sindan.sinrosaki, syokusyu: @sindan.syokusyu } }
    assert_redirected_to sindan_url(@sindan)
  end

  test "should destroy sindan" do
    assert_difference('Sindan.count', -1) do
      delete sindan_url(@sindan)
    end

    assert_redirected_to sindans_url
  end
end
