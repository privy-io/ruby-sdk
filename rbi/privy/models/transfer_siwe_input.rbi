# typed: strong

module Privy
  module Models
    class TransferSiweInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransferSiweInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      sig { returns(String) }
      attr_accessor :nonce

      sig { returns(T.nilable(String)) }
      attr_accessor :chain_id

      sig { returns(T.nilable(String)) }
      attr_accessor :connector_type

      sig { returns(T.nilable(String)) }
      attr_accessor :wallet_client_type

      # Input for transferring a SIWE account.
      sig do
        params(
          address: String,
          nonce: String,
          chain_id: T.nilable(String),
          connector_type: T.nilable(String),
          wallet_client_type: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        address:,
        nonce:,
        chain_id: nil,
        connector_type: nil,
        wallet_client_type: nil
      )
      end

      sig do
        override.returns(
          {
            address: String,
            nonce: String,
            chain_id: T.nilable(String),
            connector_type: T.nilable(String),
            wallet_client_type: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
