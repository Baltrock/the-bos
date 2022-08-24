class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def index
  end

  def your_order #before_filter
    if user.password.present?
     authenticate using valid_password? method of devise
   else
     redirect_to primary_url(@primary_path)
   end
  end

  def set_password
  end

  def admin_zone
  end
end
