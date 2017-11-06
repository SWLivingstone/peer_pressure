class WelcomeController < ApplicationController
  before_action :redirect

  def index
    @user = current_user if user_signed_in?
  end

  private

  def redirect
    redirect_to user_path(current_user) if user_signed_in?
  end
end
