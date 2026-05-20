# typed: strong

module Privy
  module Models
    class KrakenEmbedGetEarnSummaryQueryParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedGetEarnSummaryQueryParams,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :currency

      # Query parameters for getting an earn summary.
      sig { params(currency: String).returns(T.attached_class) }
      def self.new(currency:)
      end

      sig { override.returns({ currency: String }) }
      def to_hash
      end
    end
  end
end
