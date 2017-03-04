class OauthsController < ApplicationController
  # skip_before_action :require_login
  def oauth
    login_at(auth_params[:provider])
  end

  def callback
    provider = auth_params[:provider]
    if @user = login_from(provider)
      redirect_to root_path, notice: "Logged in from #{provider.titleize}!"
    else
      begin
        binding.pry
        
        @user = create_from(provider)
        reset_session
        auto_login(@user)

        redirect_to root_path, notice: "Logged in from #{provider.titleize}!"
      rescue
        redirect_to root_path, alert: "Failed to login from #{provider.titleize}!"
      end
    end
  end

  #example for Rails 4: add private method below and use "auth_params[:provider]" in place of 
  #"params[:provider] above.

  private
  def auth_params
    params.permit(:code, :provider)
  end
end
