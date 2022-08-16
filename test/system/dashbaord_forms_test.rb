require "application_system_test_case"

class DashboardFormsTest < ApplicationSystemTestCase
  setup do
    @dashboard_form = dashboard_forms(:one)
  end

  test "visiting the index" do
    visit dashboard_forms_url
    assert_selector "h1", text: "Dashboard forms"
  end

  test "should create Dashboard form" do
    visit dashboard_forms_url
    click_on "New Dashboard form"

    fill_in "Admin", with: @dashboard_form.admin_id
    fill_in "Comment", with: @dashboard_form.comment
    fill_in "Company address", with: @dashboard_form.company_address
    fill_in "Company name", with: @dashboard_form.company_name
    fill_in "Representative Name", with: @dashboard_form.company_address
    fill_in "Phone number", with: @dashboard_form.phone_number
    fill_in "Pence per litre", with: @dashboard_form.pence_per_litre
    fill_in "Date of Call", with: @dashboard_form.date_of_call
    fill_in "Rating", with: @dashboard_form.rating
    click_on "Create Dashboard form"

    assert_text "Dashboard form was successfully created"
    click_on "Back"
  end

  test "should update Dashboard form" do
    visit dashboard_form_url(@dashboard_form)
    click_on "Edit this Dashboard form", match: :first

    fill_in "Admin", with: @dashboard_form.admin_id
    fill_in "Comment", with: @dashboard_form.comment
    fill_in "Company address", with: @dashboard_form.company_address
    fill_in "Company name", with: @dashboard_form.company_name
    fill_in "Phone number", with: @dashboard_form.phone_number
    fill_in "Pence per litre", with: @dashboard_form.pence_per_litre
    fill_in "Rating", with: @dashboard_form.rating
    click_on "Update Dashboard form"

    assert_text "Dashboard form was successfully updated"
    click_on "Back"
  end

  test "should destroy Dashboard form" do
    visit dashboard_form_url(@dashboard_form)
    click_on "Destroy this Dashboard form", match: :first

    assert_text "Dashboard form was successfully destroyed"
  end
end
