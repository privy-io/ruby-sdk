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

      sig do
        returns(T.nilable(Privy::SiwsLinkRequestBody::MessageType::OrSymbol))
      end
      attr_reader :message_type

      sig do
        params(
          message_type: Privy::SiwsLinkRequestBody::MessageType::OrSymbol
        ).void
      end
      attr_writer :message_type

      sig { returns(T.nilable(String)) }
      attr_accessor :wallet_client_type

      # The request body for linking a SIWS ceremony.
      sig do
        params(
          message: String,
          signature: String,
          connector_type: T.nilable(String),
          message_type: Privy::SiwsLinkRequestBody::MessageType::OrSymbol,
          wallet_client_type: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        message:,
        signature:,
        connector_type: nil,
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
            message_type: Privy::SiwsLinkRequestBody::MessageType::OrSymbol,
            wallet_client_type: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module MessageType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SiwsLinkRequestBody::MessageType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSACTION =
          T.let(
            :transaction,
            Privy::SiwsLinkRequestBody::MessageType::TaggedSymbol
          )
        PLAIN =
          T.let(:plain, Privy::SiwsLinkRequestBody::MessageType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::SiwsLinkRequestBody::MessageType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
