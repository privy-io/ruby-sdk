# typed: strong

module Privy
  module Models
    class FarcasterAuthenticateRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::FarcasterAuthenticateRequestBody,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :channel_token

      sig { returns(Float) }
      attr_accessor :fid

      sig { returns(String) }
      attr_accessor :message

      sig { returns(String) }
      attr_accessor :signature

      # Whether to allow sign-up during authentication.
      sig { returns(T.nilable(Privy::AuthenticateModeOption::OrSymbol)) }
      attr_reader :mode

      sig { params(mode: Privy::AuthenticateModeOption::OrSymbol).void }
      attr_writer :mode

      # The request body for authenticating with Farcaster.
      sig do
        params(
          channel_token: String,
          fid: Float,
          message: String,
          signature: String,
          mode: Privy::AuthenticateModeOption::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        channel_token:,
        fid:,
        message:,
        signature:,
        # Whether to allow sign-up during authentication.
        mode: nil
      )
      end

      sig do
        override.returns(
          {
            channel_token: String,
            fid: Float,
            message: String,
            signature: String,
            mode: Privy::AuthenticateModeOption::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
