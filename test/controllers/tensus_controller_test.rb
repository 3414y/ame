require "test_helper"

class TensusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tensu = tensus(:one)
  end

  test "should get index" do
    get tensus_url
    assert_response :success
  end

  test "should get new" do
    get new_tensu_url
    assert_response :success
  end

  test "should create tensu" do
    assert_difference('Tensu.count') do
      post tensus_url, params: { tensu: { hyoutei: @tensu.hyoutei, kyouka_id: @tensu.kyouka_id, seiseki_id: @tensu.seiseki_id, tokuten: @tensu.tokuten } }
    end

    assert_redirected_to tensu_url(Tensu.last)
  end

  test "should show tensu" do
    get tensu_url(@tensu)
    assert_response :success
  end

  test "should get edit" do
    get edit_tensu_url(@tensu)
    assert_response :success
  end

  test "should update tensu" do
    patch tensu_url(@tensu), params: { tensu: { hyoutei: @tensu.hyoutei, kyouka_id: @tensu.kyouka_id, seiseki_id: @tensu.seiseki_id, tokuten: @tensu.tokuten } }
    assert_redirected_to tensu_url(@tensu)
  end

  test "should destroy tensu" do
    assert_difference('Tensu.count', -1) do
      delete tensu_url(@tensu)
    end

    assert_redirected_to tensus_url
  end
end
