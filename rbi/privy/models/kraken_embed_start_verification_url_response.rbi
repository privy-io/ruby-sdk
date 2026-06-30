# typed: strong

module Privy
  module Models
    class KrakenEmbedStartVerificationURLResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedStartVerificationURLResponse,
            Privy::Internal::AnyHash
          )
        end

      # Result payload for start verification URL response.
      sig { returns(T.nilable(Privy::KrakenEmbedStartVerificationURLResult)) }
      attr_reader :result

      sig do
        params(
          result:
            T.nilable(Privy::KrakenEmbedStartVerificationURLResult::OrHash)
        ).void
      end
      attr_writer :result

      # Response body for starting verification via URL.
      sig do
        params(
          result:
            T.nilable(Privy::KrakenEmbedStartVerificationURLResult::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # Result payload for start verification URL response.
        result:
      )
      end

      sig do
        override.returns(
          { result: T.nilable(Privy::KrakenEmbedStartVerificationURLResult) }
        )
      end
      def to_hash
      end
    end
  end
end
