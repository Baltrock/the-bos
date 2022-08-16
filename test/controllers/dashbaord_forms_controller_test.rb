require "test_helper"

class DashboardFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dashboard_form = dashboard_forms(:one)
  end

  test "should get index" do
    get dashboard_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_dashboard_form_url
    assert_response :success
  end

  test "should create dashboard_form" do
    assert_difference("dashboardForm.count") do
      post dashboard_forms_url, params: { dashboard_form: { admin_id: @dashboard_form.admin_id, comment: @Dashboard_form.comment, company_address: @Dashboard_form.company_address, company_name: @Dashboard_form.company_name,  phone_number: @Dashboard_form.phone_number, pence_per_litre: @Dashboard_form.pence_per_litre, date_of_call: @Dashboard_form.date_of_call, rating: @Dashboard_form.rating } }
    end

    assert_redirected_to dashboard_form_url(DashboardForm.last)
  end

  test "should show dashboard_form" do
    get dashboard_form_url(@dashboard_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_dashboard_form_url(@dashboard_form)
    assert_response :success
  end

  test "should update Dashboard_form" do
    patch dashboard_form_url(@dashboard_form), params: { dashboard_form: { admin_id: @dashboard_form.admin_id, comment: @dashboard_form.comment, company_address: @dashboard_form.company_address, company_name: @dashboard_form.company_name, representative_name: @Dashboard_form.representative_name, phone_number: @dashboard_form.phone_number, pence_per_litre: @dashboard_form.pence_per_litre, date_of_call @Dashboard_form.date_of_call, rating: @dashboard_form.rating } }
    assert_redirected_to dashboard_form_url(@dashboard_form)
  end

  test "should destroy dashboard_form" do
    assert_difference("dashboardForm.count", -1) do
      delete dashboard_form_url(@dashboard_form)
    end

    assert_redirected_to dashboard_forms_url
  end
end
