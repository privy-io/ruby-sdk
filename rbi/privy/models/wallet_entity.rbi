# typed: strong

module Privy
  module Models
    class WalletEntity < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::WalletEntity, Privy::Internal::AnyHash) }

      # A Privy entity ID.
      sig { returns(String) }
      attr_accessor :id

      # The type of entity a wallet is attributed to.
      sig { returns(Privy::WalletEntityType::TaggedSymbol) }
      attr_accessor :type

      # The entity a wallet is attributed to.
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
          { id: String, type: Privy::WalletEntityType::TaggedSymbol }
        )
      end
      def to_hash
      end
    end
  end
end
