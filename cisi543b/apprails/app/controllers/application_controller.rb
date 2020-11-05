class ApplicationController < ActionController::Base

  before_action :set_paper_trail_whodunnit
  
    # devise whitelist..
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :clocknum])
      devise_parameter_sanitizer.permit(:account_update,  keys: [:username, :first_name, :last_name, :clocknum] )
    end


  rescue_from DeviseLdapAuthenticatable::LdapException do |exception|
    render :text => exception, :status => 500
  end


  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden }
      format.html {  redirect_to main_app.root_url, notice: exception.message  }
    end
  end

  

    protect_from_forgery with: :null_session
    
end
