class RegistrationsController < Devise::RegistrationsController
	private def sign_up_params
	byebug
	params.require(:user).permit([:name, :email, :password, :password_confirmation])
	end

	def acoount_update_params
		prams.require(:user).permit([:name, :email, :password, :password_confirmation, :current_password])		
	end
end