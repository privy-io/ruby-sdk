# typed: strong

module Privy
  module Models
    class AuthenticateSiwsInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AuthenticateSiwsInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :message

      sig { returns(String) }
      attr_accessor :signature

      sig { returns(T.nilable(String)) }
      attr_accessor :connector_type

      sig do
        returns(T.nilable(Privy::AuthenticateSiwsInput::MessageType::OrSymbol))
      end
      attr_reader :message_type

      sig do
        params(
          message_type: Privy::AuthenticateSiwsInput::MessageType::OrSymbol
        ).void
      end
      attr_writer :message_type

      # Whether to allow sign-up during authentication.
      sig { returns(T.nilable(Privy::AuthenticateModeOption::OrSymbol)) }
      attr_reader :mode

      sig { params(mode: Privy::AuthenticateModeOption::OrSymbol).void }
      attr_writer :mode

      sig { returns(T.nilable(String)) }
      attr_accessor :wallet_client_type

      # Input for authenticating a SIWS ceremony.
      sig do
        params(
          message: String,
          signature: String,
          connector_type: T.nilable(String),
          message_type: Privy::AuthenticateSiwsInput::MessageType::OrSymbol,
          mode: Privy::AuthenticateModeOption::OrSymbol,
          wallet_client_type: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        message:,
        signature:,
        connector_type: nil,
        message_type: nil,
        # Whether to allow sign-up during authentication.
        mode: nil,
        wallet_client_type: nil
      )
      end

      sig do
        override.returns(
          {
            message: String,
            signature: String,
            connector_type: T.nilable(String),
            message_type: Privy::AuthenticateSiwsInput::MessageType::OrSymbol,
            mode: Privy::AuthenticateModeOption::OrSymbol,
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
            T.all(Symbol, Privy::AuthenticateSiwsInput::MessageType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSACTION =
          T.let(
            :transaction,
            Privy::AuthenticateSiwsInput::MessageType::TaggedSymbol
          )
        PLAIN =
          T.let(:plain, Privy::AuthenticateSiwsInput::MessageType::TaggedSymbol)
        OFFCHAIN_MESSAGE =
          T.let(
            :"offchain-message",
            Privy::AuthenticateSiwsInput::MessageType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::AuthenticateSiwsInput::MessageType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
