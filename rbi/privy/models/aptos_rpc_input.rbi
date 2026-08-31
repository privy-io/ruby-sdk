# typed: strong

module Privy
  module Models
    class AptosRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::AptosRpcInput, Privy::Internal::AnyHash) }

      sig { returns(Privy::AptosRpcInput::Method::OrSymbol) }
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
          method_: Privy::AptosRpcInput::Method::OrSymbol,
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
            method_: Privy::AptosRpcInput::Method::OrSymbol,
            params: Privy::AptosSignTransactionRpcInputParams
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::AptosRpcInput::Method) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APTOS_SIGN_TRANSACTION =
          T.let(
            :aptos_signTransaction,
            Privy::AptosRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(T::Array[Privy::AptosRpcInput::Method::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
