require "test_helper"

class GakkasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gakka = gakkas(:one)
  end

  test "should get index" do
    get gakkas_url
    assert_response :success
  end

  test "should get new" do
    get new_gakka_url
    assert_response :success
  end

  test "should create gakka" do
    assert_difference('Gakka.count') do
      post gakkas_url, params: { gakka: { gakkamei: @gakka.gakkamei } }
    end

    assert_redirected_to gakka_url(Gakka.last)
  end

  test "should show gakka" do
    get gakka_url(@gakka)
    assert_response :success
  end

  test "should get edit" do
    get edit_gakka_url(@gakka)
    assert_response :success
  end

  test "should update gakka" do
    patch gakka_url(@gakka), params: { gakka: { gakkamei: @gakka.gakkamei } }
    assert_redirected_to gakka_url(@gakka)
  end

  test "should destroy gakka" do
    assert_difference('Gakka.count', -1) do
      delete gakka_url(@gakka)
    end

    assert_redirected_to gakkas_url
  end
end
