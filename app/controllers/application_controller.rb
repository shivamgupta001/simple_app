class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  def current_status
     Paypal.where(:user_id => current_user.id).first
  end
end
