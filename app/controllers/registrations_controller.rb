# Overwrite the sign_up_params and account_update_params methods to accept the :name attribute
class RegistrationsController < Devise::RegistrationsController

    private
  
    def sign_up_params
      params.require(:user).permit( :name, 
                                    :email, 
                                    :password, 
                                    :password_confirmation)
    end
  
    def account_update_params
      params.require(:user).permit( :name, 
                                    :email, 
                                    :password, 
                                    :password_confirmation, 
                                    :current_password)
    end
  end
