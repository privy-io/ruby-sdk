# typed: strong

module Privy
  module Models
    class AuthenticateSiweInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AuthenticateSiweInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :message

      sig { returns(String) }
      attr_accessor :signature

      sig { returns(T.nilable(String)) }
      attr_accessor :chain_id

      sig { returns(T.nilable(String)) }
      attr_accessor :connector_type

      # Whether to allow sign-up during authentication.
      sig { returns(T.nilable(Privy::AuthenticateModeOption::OrSymbol)) }
      attr_reader :mode

      sig { params(mode: Privy::AuthenticateModeOption::OrSymbol).void }
      attr_writer :mode

      sig { returns(T.nilable(String)) }
      attr_accessor :wallet_client_type

      # Input for authenticating a SIWE ceremony.
      sig do
        params(
          message: String,
          signature: String,
          chain_id: T.nilable(String),
          connector_type: T.nilable(String),
          mode: Privy::AuthenticateModeOption::OrSymbol,
          wallet_client_type: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        message:,
        signature:,
        chain_id: nil,
        connector_type: nil,
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
            chain_id: T.nilable(String),
            connector_type: T.nilable(String),
            mode: Privy::AuthenticateModeOption::OrSymbol,
            wallet_client_type: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
