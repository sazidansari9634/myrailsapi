module Mutations
    class Signup < Mutations::BaseMutation
        null true

        argument :user_signup_input, Types::UserSignupInput, required: true
        
        field :token, String, null: true
        field :user, Types::UserType, null: true
        field :message, String, null: true

        def resolve(**args)
            user_signup_input = args[:candidate_invitation_input].to_h 

            user = User.create user_signup_input
            token = user.generate_jwt
            { user: user, token: token, message: "Sign up successful." }
        rescue ActiveRecord::RecordInvalid => e
            GraphQL::ExecutionError.new e.message
        end
        
    end
end