# typed: strong

module Privy
  module Models
    class DenylistEthereumAddressInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::DenylistEthereumAddressInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::DenylistEthereumAddressInput::Type::OrSymbol) }
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :value

      # Denylist input for an Ethereum wallet address, which blocks SIWE logins.
      sig do
        params(
          type: Privy::DenylistEthereumAddressInput::Type::OrSymbol,
          value: String
        ).returns(T.attached_class)
      end
      def self.new(type:, value:)
      end

      sig do
        override.returns(
          {
            type: Privy::DenylistEthereumAddressInput::Type::OrSymbol,
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
            T.all(Symbol, Privy::DenylistEthereumAddressInput::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETHEREUM_ADDRESS =
          T.let(
            :ethereumAddress,
            Privy::DenylistEthereumAddressInput::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::DenylistEthereumAddressInput::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
