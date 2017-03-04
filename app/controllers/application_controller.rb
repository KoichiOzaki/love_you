class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login

  # # app/controllers/users_controller.rb
  # もしログインを必要としない場合は以下を該当のControllerに記述する
  # skip_before_action :require_login, only: [:index, :new, :create]

  # # app/controllers/user_sessions_controller.rb
  # skip_before_action :require_login, except: [:destroy]

  private
  def not_authenticated
    redirect_to login_path, alert: "Please login first"
  end
end
