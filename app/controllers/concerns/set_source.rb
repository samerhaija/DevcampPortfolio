module SetSource
  extend ActiveSupport::Concern

  included do
    before_action :set_source
  end

  def set_source
    # set q only if it exists (someone used one of the custom links)
    session[:source] = params[:q] if params[:q]
  end
end