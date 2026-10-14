# typed: strong

module Privy
  module Models
    class DenylistSolanaAddressInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::DenylistSolanaAddressInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::DenylistSolanaAddressInput::Type::OrSymbol) }
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :value

      # Denylist input for a Solana wallet address, which blocks SIWS logins.
      sig do
        params(
          type: Privy::DenylistSolanaAddressInput::Type::OrSymbol,
          value: String
        ).returns(T.attached_class)
      end
      def self.new(type:, value:)
      end

      sig do
        override.returns(
          {
            type: Privy::DenylistSolanaAddressInput::Type::OrSymbol,
            value: String
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::DenylistSolanaAddressInput::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SOLANA_ADDRESS =
          T.let(
            :solanaAddress,
            Privy::DenylistSolanaAddressInput::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::DenylistSolanaAddressInput::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
