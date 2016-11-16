class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    #    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!

    #para solucionar el error de parametros que tiene cancan con rails 4+
    before_filter do
        resource = controller_name.singularize.to_sym
        method = "#{resource}_params"
        params[resource] &&= send(method) if respond_to?(method, true)
    end

    protected 

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :role, :password, :password_confirmation])
        devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :email, :password])
    end

    #enviar mensaje para de acceso denegado
    rescue_from CanCan::AccessDenied do |exception|
        #redirect_to dashboard_path ,:flash => { :error => "NO tienes Permisos para realizar esta acción." }
        redirect_to new_user_session_path
    end
    
end
