class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, alert: exception.message
  end

  def routing_error
    render file: Rails.public_path.join('404.html'), status: :not_found
  end
end
