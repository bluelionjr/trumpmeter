class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :except => [:index]
  before_filter :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(resource)
      if current_user.poll
        poll_path(current_user.poll)
      else
        new_poll_path
      end
    end

    def after_sign_out_path_for(resource_or_scope)
      request.referrer
    end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:state])
      devise_parameter_sanitizer.permit(:account_update, keys: [:state])
    end
end
