# typed: strong

module Privy
  module Models
    class WalletEntityAssignmentRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletEntityAssignmentRequestBody,
            Privy::Internal::AnyHash
          )
        end

      # A Privy entity ID.
      sig { returns(String) }
      attr_accessor :id

      # The type of entity a wallet is attributed to.
      sig { returns(Privy::WalletEntityType::OrSymbol) }
      attr_accessor :type

      # Request body for assigning an entity to a wallet.
      sig do
        params(id: String, type: Privy::WalletEntityType::OrSymbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # A Privy entity ID.
        id:,
        # The type of entity a wallet is attributed to.
        type:
      )
      end

      sig do
        override.returns(
          { id: String, type: Privy::WalletEntityType::OrSymbol }
        )
      end
      def to_hash
      end
    end
  end
end
