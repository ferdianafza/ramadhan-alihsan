require "application_system_test_case"

class ReportRamadhansTest < ApplicationSystemTestCase
  setup do
    @report_ramadhan = report_ramadhans(:one)
  end

  test "visiting the index" do
    visit report_ramadhans_url
    assert_selector "h1", text: "Report Ramadhans"
  end

  test "creating a Report ramadhan" do
    visit report_ramadhans_url
    click_on "New Report Ramadhan"

    fill_in "Alasan", with: @report_ramadhan.alasan
    fill_in "Ashar", with: @report_ramadhan.ashar
    fill_in "Duha", with: @report_ramadhan.duha
    fill_in "Dzuhur", with: @report_ramadhan.dzuhur
    fill_in "Hajat", with: @report_ramadhan.hajat
    fill_in "Isya", with: @report_ramadhan.isya
    fill_in "Magrib", with: @report_ramadhan.magrib
    fill_in "Puasa", with: @report_ramadhan.puasa
    fill_in "Student", with: @report_ramadhan.student_id
    fill_in "Subuh", with: @report_ramadhan.subuh
    fill_in "Tadarus", with: @report_ramadhan.tadarus
    fill_in "Tahajud", with: @report_ramadhan.tahajud
    fill_in "Tarawih", with: @report_ramadhan.tarawih
    fill_in "Taubat", with: @report_ramadhan.taubat
    click_on "Create Report ramadhan"

    assert_text "Report ramadhan was successfully created"
    click_on "Back"
  end

  test "updating a Report ramadhan" do
    visit report_ramadhans_url
    click_on "Edit", match: :first

    fill_in "Alasan", with: @report_ramadhan.alasan
    fill_in "Ashar", with: @report_ramadhan.ashar
    fill_in "Duha", with: @report_ramadhan.duha
    fill_in "Dzuhur", with: @report_ramadhan.dzuhur
    fill_in "Hajat", with: @report_ramadhan.hajat
    fill_in "Isya", with: @report_ramadhan.isya
    fill_in "Magrib", with: @report_ramadhan.magrib
    fill_in "Puasa", with: @report_ramadhan.puasa
    fill_in "Student", with: @report_ramadhan.student_id
    fill_in "Subuh", with: @report_ramadhan.subuh
    fill_in "Tadarus", with: @report_ramadhan.tadarus
    fill_in "Tahajud", with: @report_ramadhan.tahajud
    fill_in "Tarawih", with: @report_ramadhan.tarawih
    fill_in "Taubat", with: @report_ramadhan.taubat
    click_on "Update Report ramadhan"

    assert_text "Report ramadhan was successfully updated"
    click_on "Back"
  end

  test "destroying a Report ramadhan" do
    visit report_ramadhans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Report ramadhan was successfully destroyed"
  end
end
