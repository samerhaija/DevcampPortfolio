class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist

  before_action :set_source

  def set_source
    # set q only if it exists (someone used one of the custom links)
    session[:source] = params[:q] if params[:q]
  end
end
