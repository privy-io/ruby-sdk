# typed: strong

module Privy
  module Models
    class WalletEntity < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::WalletEntity, Privy::Internal::AnyHash) }

      # The Privy DID of the entity.
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Privy::WalletEntity::Type::TaggedSymbol) }
      attr_accessor :type

      # The entity a wallet is attributed to.
      sig do
        params(id: String, type: Privy::WalletEntity::Type::OrSymbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # The Privy DID of the entity.
        id:,
        type:
      )
      end

      sig do
        override.returns(
          { id: String, type: Privy::WalletEntity::Type::TaggedSymbol }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Privy::WalletEntity::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USER = T.let(:user, Privy::WalletEntity::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Privy::WalletEntity::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
