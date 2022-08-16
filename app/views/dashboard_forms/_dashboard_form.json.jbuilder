json.extract! dashboard_form, :id, :company_name, :company_address, :representative_name, :phone_number, :pence_per_litre, :comment, :rating, :created_at, :updated_at
json.url dashboard_form_url(dashboard_form, format: :json)
