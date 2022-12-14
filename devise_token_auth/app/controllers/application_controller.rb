class ApplicationController < ActionController::API
        include DeviseTokenAuth::Concerns::SetUserByToken
        before_action :configure_permitted_parameters, if: :devise_controller?
        respond_to :json

        protected

        def configure_permitted_parameters
                devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name])
                devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name, :last_name,:email,:password])
        end
end
