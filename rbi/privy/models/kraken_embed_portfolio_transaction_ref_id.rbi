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

      sig do
        returns(Privy::KrakenEmbedPortfolioTransactionRefID::Type::OrSymbol)
      end
      attr_accessor :type

      # A reference ID filter for portfolio transaction queries, identifying a
      # transaction by type and reference identifier.
      sig do
        params(
          ref_id: String,
          type: Privy::KrakenEmbedPortfolioTransactionRefID::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(ref_id:, type:)
      end

      sig do
        override.returns(
          {
            ref_id: String,
            type: Privy::KrakenEmbedPortfolioTransactionRefID::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::KrakenEmbedPortfolioTransactionRefID::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SIMPLE_ORDER_QUOTE =
          T.let(
            :simple_order_quote,
            Privy::KrakenEmbedPortfolioTransactionRefID::Type::TaggedSymbol
          )
        SIMPLE_ORDER_QUOTE_FAILED =
          T.let(
            :simple_order_quote_failed,
            Privy::KrakenEmbedPortfolioTransactionRefID::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedPortfolioTransactionRefID::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
