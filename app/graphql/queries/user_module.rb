module Queries
    module UserModel
        extend ActiveSupport::Concern
        include GraphQL::Schema::Memeber::GraphQLTypeNames
        
        include do
            field :users, [Types::UserType], null: false
        end

        def users
            Users.all
        end
    end
end