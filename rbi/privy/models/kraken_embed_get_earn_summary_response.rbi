# typed: strong

module Privy
  module Models
    class KrakenEmbedGetEarnSummaryResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedGetEarnSummaryResponse,
            Privy::Internal::AnyHash
          )
        end

      # Kraken API response envelope for earn summary.
      sig { returns(Privy::KrakenEmbedGetEarnSummaryKrakenResponse) }
      attr_reader :data

      sig do
        params(
          data: Privy::KrakenEmbedGetEarnSummaryKrakenResponse::OrHash
        ).void
      end
      attr_writer :data

      # Earn summary for a user including Auto-Earn status, total rewards, and upcoming
      # payouts.
      sig do
        params(
          data: Privy::KrakenEmbedGetEarnSummaryKrakenResponse::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Kraken API response envelope for earn summary.
        data:
      )
      end

      sig do
        override.returns(
          { data: Privy::KrakenEmbedGetEarnSummaryKrakenResponse }
        )
      end
      def to_hash
      end
    end
  end
end
