# typed: strong

module Privy
  module Models
    class FarcasterConnectStatusPendingResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::FarcasterConnectStatusPendingResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :nonce

      sig do
        returns(Privy::FarcasterConnectStatusPendingResponse::State::OrSymbol)
      end
      attr_accessor :state

      # Proxy for the Farcaster Connect pending status response as defined in FIP-11.
      sig do
        params(
          nonce: String,
          state: Privy::FarcasterConnectStatusPendingResponse::State::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(nonce:, state:)
      end

      sig do
        override.returns(
          {
            nonce: String,
            state: Privy::FarcasterConnectStatusPendingResponse::State::OrSymbol
          }
        )
      end
      def to_hash
      end

      module State
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::FarcasterConnectStatusPendingResponse::State)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Privy::FarcasterConnectStatusPendingResponse::State::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::FarcasterConnectStatusPendingResponse::State::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
