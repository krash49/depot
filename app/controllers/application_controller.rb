class ApplicationController < ActionController::Base
  before_action :authoraize

  protect_from_forgery with: :exception

  protected

    def authoraize
      unless User.find_by(id: session[:user_id])
        redirect_to login_url, notice: "Please log in"        
      end

    end
end
