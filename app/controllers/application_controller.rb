class ApplicationController < ActionController::Base

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :address, :fuel_limit, :current_fuel_volume, :required_fuel, :instructions_for_delivery])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:fuel_limit, :current_fuel_volume, :required_fuel, :instructions_for_delivery])
  end

  respond_to :html, :json
  protected

  def after_sign_up_path(resource)
    user_root_path(current_user) || request.referrer
  end

  def after_log_in_path(resource)
    user_root_path(current_user) || request.referrer
  end

    def after_sign_up_path_for(admin)
    admin_root_path(current_user) || request.referrer
  end

  def after_log_in_path_for(admin)
    admin_root_path(resource) || request.referrer
  end
end
