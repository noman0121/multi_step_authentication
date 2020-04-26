class AfterSignupController < ApplicationController

  include Wicked::Wizard
  steps :add_gender
  def show
    @user = current_user
    render_wizard
  end

  def update
  	@user = current_user
  	@user.gender = params[:user][:gender]
  	render_wizard @user
  end

  private
  def user_params
    params.require(:user)
          .permit(:gender, :email, :password, :encrypted_password) 
  end
end
