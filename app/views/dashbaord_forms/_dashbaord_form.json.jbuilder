json.extract! dashbaord_form, :id, :company_name, :company_address, :phone_number, :pounds_per_litre, :comment, :rating, :admin_id, :created_at, :updated_at
json.url dashbaord_form_url(dashbaord_form, format: :json)
