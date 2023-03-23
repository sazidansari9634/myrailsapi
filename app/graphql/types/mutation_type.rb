module Types
  class MutationType < Types::BaseObject
     field :signup, mutation: Mutations::Signup
  end
end
