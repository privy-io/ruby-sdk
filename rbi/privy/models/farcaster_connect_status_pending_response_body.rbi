# typed: strong

module Privy
  module Models
    class FarcasterConnectStatusPendingResponseBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::FarcasterConnectStatusPendingResponseBody,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :nonce

      sig do
        returns(
          Privy::FarcasterConnectStatusPendingResponseBody::State::OrSymbol
        )
      end
      attr_accessor :state

      # The response body for pending a Farcaster connection.
      sig do
        params(
          nonce: String,
          state:
            Privy::FarcasterConnectStatusPendingResponseBody::State::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(nonce:, state:)
      end

      sig do
        override.returns(
          {
            nonce: String,
            state:
              Privy::FarcasterConnectStatusPendingResponseBody::State::OrSymbol
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
              Privy::FarcasterConnectStatusPendingResponseBody::State
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Privy::FarcasterConnectStatusPendingResponseBody::State::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::FarcasterConnectStatusPendingResponseBody::State::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
