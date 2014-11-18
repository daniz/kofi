class RegistrationsController < Devise::RegistrationsController
	protected

	def after_sign_up_path_for(user)
		home_welcome_path
	end

end