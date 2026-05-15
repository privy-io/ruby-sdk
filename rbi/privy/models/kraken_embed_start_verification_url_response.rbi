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
      sig { returns(Privy::KrakenEmbedStartVerificationURLResponse::Result) }
      attr_reader :result

      sig do
        params(
          result: Privy::KrakenEmbedStartVerificationURLResponse::Result::OrHash
        ).void
      end
      attr_writer :result

      # Response body for starting verification via URL.
      sig do
        params(
          result: Privy::KrakenEmbedStartVerificationURLResponse::Result::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Result payload for start verification URL response.
        result:
      )
      end

      sig do
        override.returns(
          { result: Privy::KrakenEmbedStartVerificationURLResponse::Result }
        )
      end
      def to_hash
      end

      class Result < Privy::Models::KrakenEmbedStartVerificationURLResult
        OrHash =
          T.type_alias do
            T.any(
              Privy::KrakenEmbedStartVerificationURLResponse::Result,
              Privy::Internal::AnyHash
            )
          end

        # Result payload for start verification URL response.
        sig { returns(T.attached_class) }
        def self.new
        end

        sig { override.returns({}) }
        def to_hash
        end
      end
    end
  end
end
