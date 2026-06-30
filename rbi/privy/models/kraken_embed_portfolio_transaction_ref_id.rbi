# typed: strong

module Privy
  module Models
    class KrakenEmbedPortfolioTransactionRefID < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedPortfolioTransactionRefID,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :ref_id

      # The type of reference ID used to filter portfolio transactions by quote or
      # failed quote references.
      sig { returns(Privy::KrakenEmbedPortfolioTransactionRefIDType::OrSymbol) }
      attr_accessor :type

      # A reference ID filter for portfolio transaction queries, identifying a
      # transaction by type and reference identifier.
      sig do
        params(
          ref_id: String,
          type: Privy::KrakenEmbedPortfolioTransactionRefIDType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        ref_id:,
        # The type of reference ID used to filter portfolio transactions by quote or
        # failed quote references.
        type:
      )
      end

      sig do
        override.returns(
          {
            ref_id: String,
            type: Privy::KrakenEmbedPortfolioTransactionRefIDType::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
