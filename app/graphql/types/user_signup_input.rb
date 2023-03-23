module Types
    class UserSignupInput < BaseInputObject
        argument :email, String, required: true
        argument :first_name, String, required: false
        argument :last_name, String, required: true
        argument :password, String, required: true  
    end
end