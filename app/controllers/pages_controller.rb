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
   #set the user password in this method and after successful completion redirect to login page where before filter your_order will be called
  end

  def admin_zone
  end
end
