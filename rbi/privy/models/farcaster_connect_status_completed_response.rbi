# typed: strong

module Privy
  module Models
    class FarcasterConnectStatusCompletedResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::FarcasterConnectStatusCompletedResponse,
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
        returns(Privy::FarcasterConnectStatusCompletedResponse::State::OrSymbol)
      end
      attr_accessor :state

      sig { returns(String) }
      attr_accessor :username

      # Proxy for the Farcaster Connect completed status response as defined in FIP-11.
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
            Privy::FarcasterConnectStatusCompletedResponse::State::OrSymbol,
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
              Privy::FarcasterConnectStatusCompletedResponse::State::OrSymbol,
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
            T.all(Symbol, Privy::FarcasterConnectStatusCompletedResponse::State)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMPLETED =
          T.let(
            :completed,
            Privy::FarcasterConnectStatusCompletedResponse::State::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::FarcasterConnectStatusCompletedResponse::State::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
