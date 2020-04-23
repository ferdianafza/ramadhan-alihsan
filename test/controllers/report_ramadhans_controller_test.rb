require 'test_helper'

class ReportRamadhansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report_ramadhan = report_ramadhans(:one)
  end

  test "should get index" do
    get report_ramadhans_url
    assert_response :success
  end

  test "should get new" do
    get new_report_ramadhan_url
    assert_response :success
  end

  test "should create report_ramadhan" do
    assert_difference('ReportRamadhan.count') do
      post report_ramadhans_url, params: { report_ramadhan: { alasan: @report_ramadhan.alasan, ashar: @report_ramadhan.ashar, duha: @report_ramadhan.duha, dzuhur: @report_ramadhan.dzuhur, hajat: @report_ramadhan.hajat, isya: @report_ramadhan.isya, magrib: @report_ramadhan.magrib, puasa: @report_ramadhan.puasa, student_id: @report_ramadhan.student_id, subuh: @report_ramadhan.subuh, tadarus: @report_ramadhan.tadarus, tahajud: @report_ramadhan.tahajud, tarawih: @report_ramadhan.tarawih, taubat: @report_ramadhan.taubat } }
    end

    assert_redirected_to report_ramadhan_url(ReportRamadhan.last)
  end

  test "should show report_ramadhan" do
    get report_ramadhan_url(@report_ramadhan)
    assert_response :success
  end

  test "should get edit" do
    get edit_report_ramadhan_url(@report_ramadhan)
    assert_response :success
  end

  test "should update report_ramadhan" do
    patch report_ramadhan_url(@report_ramadhan), params: { report_ramadhan: { alasan: @report_ramadhan.alasan, ashar: @report_ramadhan.ashar, duha: @report_ramadhan.duha, dzuhur: @report_ramadhan.dzuhur, hajat: @report_ramadhan.hajat, isya: @report_ramadhan.isya, magrib: @report_ramadhan.magrib, puasa: @report_ramadhan.puasa, student_id: @report_ramadhan.student_id, subuh: @report_ramadhan.subuh, tadarus: @report_ramadhan.tadarus, tahajud: @report_ramadhan.tahajud, tarawih: @report_ramadhan.tarawih, taubat: @report_ramadhan.taubat } }
    assert_redirected_to report_ramadhan_url(@report_ramadhan)
  end

  test "should destroy report_ramadhan" do
    assert_difference('ReportRamadhan.count', -1) do
      delete report_ramadhan_url(@report_ramadhan)
    end

    assert_redirected_to report_ramadhans_url
  end
end
