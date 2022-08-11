require "test_helper"

class DashbaordFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dashbaord_form = dashbaord_forms(:one)
  end

  test "should get index" do
    get dashbaord_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_dashbaord_form_url
    assert_response :success
  end

  test "should create dashbaord_form" do
    assert_difference("DashbaordForm.count") do
      post dashbaord_forms_url, params: { dashbaord_form: { admin_id: @dashbaord_form.admin_id, comment: @dashbaord_form.comment, company_address: @dashbaord_form.company_address, company_name: @dashbaord_form.company_name, phone_number: @dashbaord_form.phone_number, pounds_per_litre: @dashbaord_form.pounds_per_litre, rating: @dashbaord_form.rating } }
    end

    assert_redirected_to dashbaord_form_url(DashbaordForm.last)
  end

  test "should show dashbaord_form" do
    get dashbaord_form_url(@dashbaord_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_dashbaord_form_url(@dashbaord_form)
    assert_response :success
  end

  test "should update dashbaord_form" do
    patch dashbaord_form_url(@dashbaord_form), params: { dashbaord_form: { admin_id: @dashbaord_form.admin_id, comment: @dashbaord_form.comment, company_address: @dashbaord_form.company_address, company_name: @dashbaord_form.company_name, phone_number: @dashbaord_form.phone_number, pounds_per_litre: @dashbaord_form.pounds_per_litre, rating: @dashbaord_form.rating } }
    assert_redirected_to dashbaord_form_url(@dashbaord_form)
  end

  test "should destroy dashbaord_form" do
    assert_difference("DashbaordForm.count", -1) do
      delete dashbaord_form_url(@dashbaord_form)
    end

    assert_redirected_to dashbaord_forms_url
  end
end
