# app/controllers/application_controller.rb

class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
  
    # Redirect to admin panel after sign in
    def after_sign_in_path_for(resource)
      admin_panel_index_path
    end
end
  