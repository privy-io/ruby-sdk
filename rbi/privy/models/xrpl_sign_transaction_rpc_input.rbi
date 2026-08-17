# typed: strong

module Privy
  module Models
    class XrplSignTransactionRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::XrplSignTransactionRpcInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::XrplSignTransactionRpcInput::Method::OrSymbol) }
      attr_accessor :method_

      # Parameters for the XRPL `xrpl_signTransaction` RPC.
      sig { returns(Privy::XrplSignTransactionRpcInputParams) }
      attr_reader :params

      sig do
        params(params: Privy::XrplSignTransactionRpcInputParams::OrHash).void
      end
      attr_writer :params

      # Executes the XRPL `xrpl_signTransaction` RPC to sign a transaction. The caller
      # is responsible for broadcasting.
      sig do
        params(
          method_: Privy::XrplSignTransactionRpcInput::Method::OrSymbol,
          params: Privy::XrplSignTransactionRpcInputParams::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the XRPL `xrpl_signTransaction` RPC.
        params:
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::XrplSignTransactionRpcInput::Method::OrSymbol,
            params: Privy::XrplSignTransactionRpcInputParams
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::XrplSignTransactionRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        XRPL_SIGN_TRANSACTION =
          T.let(
            :xrpl_signTransaction,
            Privy::XrplSignTransactionRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::XrplSignTransactionRpcInput::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
