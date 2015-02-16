class ApplicationController < ActionController::Base
	before_filter :configure_permitted_parameters, if: :devise_controller?
	before_action :set_locale
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_up) << :username
		devise_parameter_sanitizer.for(:account_update) << :username
	end



	 
	def set_locale
	  I18n.locale = params[:locale] || I18n.default_locale
	  cookies['locale'] = { :value => params[:locale] || :ar, :expires => 1.year.from_now } 
	end

	def default_url_options(options = {})
  		{ locale: I18n.locale }.merge options
	end


end
