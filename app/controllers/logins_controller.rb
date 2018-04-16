class LoginsController < ApplicationController

  def login
    @logins = Login.all
  end

  def after_login
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def login_params
      params.fetch(:login, {})
    end
end
