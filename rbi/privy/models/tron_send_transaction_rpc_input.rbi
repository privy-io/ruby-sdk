# typed: strong

module Privy
  module Models
    class TronSendTransactionRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TronSendTransactionRpcInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::TronSendTransactionRpcInput::Method::OrSymbol) }
      attr_accessor :method_

      # Parameters for the Tron `tron_sendTransaction` RPC.
      sig { returns(Privy::TronSendTransactionRpcInputParams) }
      attr_reader :params

      sig do
        params(params: Privy::TronSendTransactionRpcInputParams::OrHash).void
      end
      attr_writer :params

      # A valid CAIP-2 chain ID (e.g. 'eip155:1').
      sig { returns(T.nilable(String)) }
      attr_reader :caip2

      sig { params(caip2: String).void }
      attr_writer :caip2

      # Executes the Tron `tron_sendTransaction` RPC to sign and broadcast a
      # transaction.
      sig do
        params(
          method_: Privy::TronSendTransactionRpcInput::Method::OrSymbol,
          params: Privy::TronSendTransactionRpcInputParams::OrHash,
          caip2: String
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the Tron `tron_sendTransaction` RPC.
        params:,
        # A valid CAIP-2 chain ID (e.g. 'eip155:1').
        caip2: nil
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::TronSendTransactionRpcInput::Method::OrSymbol,
            params: Privy::TronSendTransactionRpcInputParams,
            caip2: String
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::TronSendTransactionRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRON_SEND_TRANSACTION =
          T.let(
            :tron_sendTransaction,
            Privy::TronSendTransactionRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::TronSendTransactionRpcInput::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
