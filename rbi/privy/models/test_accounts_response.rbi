# typed: strong

module Privy
  module Models
    class TestAccountsResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TestAccountsResponse, Privy::Internal::AnyHash)
        end

      sig { returns(T::Array[Privy::TestAccount]) }
      attr_accessor :data

      # Response for listing test accounts for an app.
      sig do
        params(data: T::Array[Privy::TestAccount::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(data:)
      end

      sig { override.returns({ data: T::Array[Privy::TestAccount] }) }
      def to_hash
      end
    end
  end
end
