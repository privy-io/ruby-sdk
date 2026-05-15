# typed: strong

module Privy
  module Models
    class FarcasterConnectStatusCompletedResponseBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::FarcasterConnectStatusCompletedResponseBody,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :bio

      sig { returns(String) }
      attr_accessor :display_name

      sig { returns(Float) }
      attr_accessor :fid

      sig { returns(String) }
      attr_accessor :message

      sig { returns(String) }
      attr_accessor :nonce

      sig { returns(String) }
      attr_accessor :pfp_url

      sig { returns(String) }
      attr_accessor :signature

      sig do
        returns(
          Privy::FarcasterConnectStatusCompletedResponseBody::State::OrSymbol
        )
      end
      attr_accessor :state

      sig { returns(String) }
      attr_accessor :username

      # The response body for completing a Farcaster connection.
      sig do
        params(
          bio: String,
          display_name: String,
          fid: Float,
          message: String,
          nonce: String,
          pfp_url: String,
          signature: String,
          state:
            Privy::FarcasterConnectStatusCompletedResponseBody::State::OrSymbol,
          username: String
        ).returns(T.attached_class)
      end
      def self.new(
        bio:,
        display_name:,
        fid:,
        message:,
        nonce:,
        pfp_url:,
        signature:,
        state:,
        username:
      )
      end

      sig do
        override.returns(
          {
            bio: String,
            display_name: String,
            fid: Float,
            message: String,
            nonce: String,
            pfp_url: String,
            signature: String,
            state:
              Privy::FarcasterConnectStatusCompletedResponseBody::State::OrSymbol,
            username: String
          }
        )
      end
      def to_hash
      end

      module State
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::FarcasterConnectStatusCompletedResponseBody::State
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMPLETED =
          T.let(
            :completed,
            Privy::FarcasterConnectStatusCompletedResponseBody::State::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::FarcasterConnectStatusCompletedResponseBody::State::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
