require "test_helper"

class SitumonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @situmon = situmons(:one)
  end

  test "should get index" do
    get situmons_url
    assert_response :success
  end

  test "should get new" do
    get new_situmon_url
    assert_response :success
  end

  test "should create situmon" do
    assert_difference('Situmon.count') do
      post situmons_url, params: { situmon: { kategori: @situmon.kategori, naiyou: @situmon.naiyou, nitiji: @situmon.nitiji, user_id: @situmon.user_id } }
    end

    assert_redirected_to situmon_url(Situmon.last)
  end

  test "should show situmon" do
    get situmon_url(@situmon)
    assert_response :success
  end

  test "should get edit" do
    get edit_situmon_url(@situmon)
    assert_response :success
  end

  test "should update situmon" do
    patch situmon_url(@situmon), params: { situmon: { kategori: @situmon.kategori, naiyou: @situmon.naiyou, nitiji: @situmon.nitiji, user_id: @situmon.user_id } }
    assert_redirected_to situmon_url(@situmon)
  end

  test "should destroy situmon" do
    assert_difference('Situmon.count', -1) do
      delete situmon_url(@situmon)
    end

    assert_redirected_to situmons_url
  end
end
