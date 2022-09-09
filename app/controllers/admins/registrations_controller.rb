class Admins::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]


  protected

  def after_sign_in_path_for(resource)
    if resource.admin
      :admins
    elsif resource.admin == false
      :users
    else
      super
    end
  end

  def ActionController
  end

end
