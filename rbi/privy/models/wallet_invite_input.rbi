# typed: strong

module Privy
  module Models
    class WalletInviteInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletInviteInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::WalletInviteInput::Type::OrSymbol) }
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :value

      # Allowlist invite input for a wallet address.
      sig do
        params(
          type: Privy::WalletInviteInput::Type::OrSymbol,
          value: String
        ).returns(T.attached_class)
      end
      def self.new(type:, value:)
      end

      sig do
        override.returns(
          { type: Privy::WalletInviteInput::Type::OrSymbol, value: String }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::WalletInviteInput::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET = T.let(:wallet, Privy::WalletInviteInput::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::WalletInviteInput::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
