# typed: strong

module Privy
  module Models
    class SiwsLinkRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SiwsLinkRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :message

      sig { returns(String) }
      attr_accessor :signature

      sig { returns(T.nilable(String)) }
      attr_accessor :connector_type

      # The type of SIWS message being signed.
      sig { returns(T.nilable(Privy::SiwsMessageType::OrSymbol)) }
      attr_reader :message_type

      sig { params(message_type: Privy::SiwsMessageType::OrSymbol).void }
      attr_writer :message_type

      sig { returns(T.nilable(String)) }
      attr_accessor :wallet_client_type

      # The request body for linking a SIWS ceremony.
      sig do
        params(
          message: String,
          signature: String,
          connector_type: T.nilable(String),
          message_type: Privy::SiwsMessageType::OrSymbol,
          wallet_client_type: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        message:,
        signature:,
        connector_type: nil,
        # The type of SIWS message being signed.
        message_type: nil,
        wallet_client_type: nil
      )
      end

      sig do
        override.returns(
          {
            message: String,
            signature: String,
            connector_type: T.nilable(String),
            message_type: Privy::SiwsMessageType::OrSymbol,
            wallet_client_type: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
