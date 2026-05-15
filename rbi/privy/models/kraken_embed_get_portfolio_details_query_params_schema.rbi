# typed: strong

module Privy
  module Models
    class KrakenEmbedGetPortfolioDetailsQueryParamsSchema < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedGetPortfolioDetailsQueryParamsSchema,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :quote

      sig { params(quote: String).void }
      attr_writer :quote

      # Query parameters for portfolio details endpoint.
      sig { params(quote: String).returns(T.attached_class) }
      def self.new(quote: nil)
      end

      sig { override.returns({ quote: String }) }
      def to_hash
      end
    end
  end
end
