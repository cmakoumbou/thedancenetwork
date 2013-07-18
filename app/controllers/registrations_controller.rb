class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    user_root_path(current_user)
  end

  def after_update_path_for(resource)
  	user_root_path(current_user)
  end
end