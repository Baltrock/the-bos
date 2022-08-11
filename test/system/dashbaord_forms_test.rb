require "application_system_test_case"

class DashbaordFormsTest < ApplicationSystemTestCase
  setup do
    @dashbaord_form = dashbaord_forms(:one)
  end

  test "visiting the index" do
    visit dashbaord_forms_url
    assert_selector "h1", text: "Dashbaord forms"
  end

  test "should create dashbaord form" do
    visit dashbaord_forms_url
    click_on "New dashbaord form"

    fill_in "Admin", with: @dashbaord_form.admin_id
    fill_in "Comment", with: @dashbaord_form.comment
    fill_in "Company address", with: @dashbaord_form.company_address
    fill_in "Company name", with: @dashbaord_form.company_name
    fill_in "Phone number", with: @dashbaord_form.phone_number
    fill_in "Pounds per litre", with: @dashbaord_form.pounds_per_litre
    fill_in "Rating", with: @dashbaord_form.rating
    click_on "Create Dashbaord form"

    assert_text "Dashbaord form was successfully created"
    click_on "Back"
  end

  test "should update Dashbaord form" do
    visit dashbaord_form_url(@dashbaord_form)
    click_on "Edit this dashbaord form", match: :first

    fill_in "Admin", with: @dashbaord_form.admin_id
    fill_in "Comment", with: @dashbaord_form.comment
    fill_in "Company address", with: @dashbaord_form.company_address
    fill_in "Company name", with: @dashbaord_form.company_name
    fill_in "Phone number", with: @dashbaord_form.phone_number
    fill_in "Pounds per litre", with: @dashbaord_form.pounds_per_litre
    fill_in "Rating", with: @dashbaord_form.rating
    click_on "Update Dashbaord form"

    assert_text "Dashbaord form was successfully updated"
    click_on "Back"
  end

  test "should destroy Dashbaord form" do
    visit dashbaord_form_url(@dashbaord_form)
    click_on "Destroy this dashbaord form", match: :first

    assert_text "Dashbaord form was successfully destroyed"
  end
end
