# typed: strong

module Privy
  module Models
    class SiwsInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::SiwsInput, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :message

      sig { returns(String) }
      attr_accessor :signature

      sig { returns(T.nilable(String)) }
      attr_accessor :connector_type

      sig { returns(T.nilable(Privy::SiwsInput::MessageType::OrSymbol)) }
      attr_reader :message_type

      sig { params(message_type: Privy::SiwsInput::MessageType::OrSymbol).void }
      attr_writer :message_type

      sig { returns(T.nilable(String)) }
      attr_accessor :wallet_client_type

      # Input for a SIWS signing ceremony.
      sig do
        params(
          message: String,
          signature: String,
          connector_type: T.nilable(String),
          message_type: Privy::SiwsInput::MessageType::OrSymbol,
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
            message_type: Privy::SiwsInput::MessageType::OrSymbol,
            wallet_client_type: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module MessageType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::SiwsInput::MessageType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSACTION =
          T.let(:transaction, Privy::SiwsInput::MessageType::TaggedSymbol)
        PLAIN = T.let(:plain, Privy::SiwsInput::MessageType::TaggedSymbol)
        OFFCHAIN_MESSAGE =
          T.let(
            :"offchain-message",
            Privy::SiwsInput::MessageType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::SiwsInput::MessageType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
