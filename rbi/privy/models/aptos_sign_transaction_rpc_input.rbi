# typed: strong

module Privy
  module Models
    class AptosSignTransactionRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AptosSignTransactionRpcInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::AptosSignTransactionRpcInput::Method::OrSymbol) }
      attr_accessor :method_

      # Parameters for the Aptos `aptos_signTransaction` RPC.
      sig { returns(Privy::AptosSignTransactionRpcInputParams) }
      attr_reader :params

      sig do
        params(params: Privy::AptosSignTransactionRpcInputParams::OrHash).void
      end
      attr_writer :params

      # Executes the Aptos `aptos_signTransaction` RPC to sign a legacy single-signer
      # Ed25519 RawTransaction. The caller is responsible for broadcasting.
      sig do
        params(
          method_: Privy::AptosSignTransactionRpcInput::Method::OrSymbol,
          params: Privy::AptosSignTransactionRpcInputParams::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the Aptos `aptos_signTransaction` RPC.
        params:
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::AptosSignTransactionRpcInput::Method::OrSymbol,
            params: Privy::AptosSignTransactionRpcInputParams
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::AptosSignTransactionRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APTOS_SIGN_TRANSACTION =
          T.let(
            :aptos_signTransaction,
            Privy::AptosSignTransactionRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::AptosSignTransactionRpcInput::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
