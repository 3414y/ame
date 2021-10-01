require "test_helper"

class KyoukasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kyouka = kyoukas(:one)
  end

  test "should get index" do
    get kyoukas_url
    assert_response :success
  end

  test "should get new" do
    get new_kyouka_url
    assert_response :success
  end

  test "should create kyouka" do
    assert_difference('Kyouka.count') do
      post kyoukas_url, params: { kyouka: { gakunen: @kyouka.gakunen, namae: @kyouka.namae, narabi: @kyouka.narabi, senkou: @kyouka.senkou } }
    end

    assert_redirected_to kyouka_url(Kyouka.last)
  end

  test "should show kyouka" do
    get kyouka_url(@kyouka)
    assert_response :success
  end

  test "should get edit" do
    get edit_kyouka_url(@kyouka)
    assert_response :success
  end

  test "should update kyouka" do
    patch kyouka_url(@kyouka), params: { kyouka: { gakunen: @kyouka.gakunen, namae: @kyouka.namae, narabi: @kyouka.narabi, senkou: @kyouka.senkou } }
    assert_redirected_to kyouka_url(@kyouka)
  end

  test "should destroy kyouka" do
    assert_difference('Kyouka.count', -1) do
      delete kyouka_url(@kyouka)
    end

    assert_redirected_to kyoukas_url
  end
end
