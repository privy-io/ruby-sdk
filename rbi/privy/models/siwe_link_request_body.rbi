# typed: strong

module Privy
  module Models
    class SiweLinkRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SiweLinkRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :message

      sig { returns(String) }
      attr_accessor :signature

      sig { returns(T.nilable(String)) }
      attr_accessor :chain_id

      sig { returns(T.nilable(String)) }
      attr_accessor :connector_type

      sig { returns(T.nilable(String)) }
      attr_accessor :wallet_client_type

      # The request body for linking a SIWE ceremony.
      sig do
        params(
          message: String,
          signature: String,
          chain_id: T.nilable(String),
          connector_type: T.nilable(String),
          wallet_client_type: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        message:,
        signature:,
        chain_id: nil,
        connector_type: nil,
        wallet_client_type: nil
      )
      end

      sig do
        override.returns(
          {
            message: String,
            signature: String,
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
