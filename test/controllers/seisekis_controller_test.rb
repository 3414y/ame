require "test_helper"

class SeisekisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seiseki = seisekis(:one)
  end

  test "should get index" do
    get seisekis_url
    assert_response :success
  end

  test "should get new" do
    get new_seiseki_url
    assert_response :success
  end

  test "should create seiseki" do
    assert_difference('Seiseki.count') do
      post seisekis_url, params: { seiseki: { gakki: @seiseki.gakki, gakunen: @seiseki.gakunen, hyoutei: @seiseki.hyoutei, kyouka_id: @seiseki.kyouka_id, narabi: @seiseki.narabi, tokuten: @seiseki.tokuten, user_id: @seiseki.user_id } }
    end

    assert_redirected_to seiseki_url(Seiseki.last)
  end

  test "should show seiseki" do
    get seiseki_url(@seiseki)
    assert_response :success
  end

  test "should get edit" do
    get edit_seiseki_url(@seiseki)
    assert_response :success
  end

  test "should update seiseki" do
    patch seiseki_url(@seiseki), params: { seiseki: { gakki: @seiseki.gakki, gakunen: @seiseki.gakunen, hyoutei: @seiseki.hyoutei, kyouka_id: @seiseki.kyouka_id, narabi: @seiseki.narabi, tokuten: @seiseki.tokuten, user_id: @seiseki.user_id } }
    assert_redirected_to seiseki_url(@seiseki)
  end

  test "should destroy seiseki" do
    assert_difference('Seiseki.count', -1) do
      delete seiseki_url(@seiseki)
    end

    assert_redirected_to seisekis_url
  end
end
