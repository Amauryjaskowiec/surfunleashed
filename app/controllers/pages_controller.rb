class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]
  def home
  end

  def dashboard
<<<<<<< HEAD
=======
    @user = current_user
>>>>>>> 48e2edfe6fb0e8f89b0143e44f03b5644a5af034
  end
end
