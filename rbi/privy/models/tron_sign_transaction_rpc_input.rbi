# typed: strong

module Privy
  module Models
    class TronSignTransactionRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TronSignTransactionRpcInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::TronSignTransactionRpcInput::Method::OrSymbol) }
      attr_accessor :method_

      # Parameters for the Tron `tron_signTransaction` RPC.
      sig { returns(Privy::TronSignTransactionRpcInputParams) }
      attr_reader :params

      sig do
        params(params: Privy::TronSignTransactionRpcInputParams::OrHash).void
      end
      attr_writer :params

      # Executes the Tron `tron_signTransaction` RPC to sign a transaction. The caller
      # is responsible for broadcasting.
      sig do
        params(
          method_: Privy::TronSignTransactionRpcInput::Method::OrSymbol,
          params: Privy::TronSignTransactionRpcInputParams::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the Tron `tron_signTransaction` RPC.
        params:
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::TronSignTransactionRpcInput::Method::OrSymbol,
            params: Privy::TronSignTransactionRpcInputParams
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::TronSignTransactionRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRON_SIGN_TRANSACTION =
          T.let(
            :tron_signTransaction,
            Privy::TronSignTransactionRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::TronSignTransactionRpcInput::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
