module Types
    class UserType < Types:BaseObject
        field :id, Int, null: false
        field :email, String, null: true
        field :first_name, String, null: true
        field :last_name, String, null: true
    end
end