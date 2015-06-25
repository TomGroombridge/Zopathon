class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    @user = User.find(params[:id])
    redirect_to dashboard_path(@user)
  end
end