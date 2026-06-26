# typed: strong

module Privy
  module Models
    class KrakenEmbedGetPortfolioTransactionsQueryParamsSchema < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :assets

      sig { params(assets: T::Array[String]).void }
      attr_writer :assets

      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      sig { returns(T.nilable(Time)) }
      attr_reader :from_time

      sig { params(from_time: Time).void }
      attr_writer :from_time

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :ids

      sig { params(ids: T::Array[String]).void }
      attr_writer :ids

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig { returns(T.nilable(String)) }
      attr_reader :quote

      sig { params(quote: String).void }
      attr_writer :quote

      sig do
        returns(
          T.nilable(T::Array[Privy::KrakenEmbedPortfolioTransactionRefID])
        )
      end
      attr_reader :ref_ids

      sig do
        params(
          ref_ids: T::Array[Privy::KrakenEmbedPortfolioTransactionRefID::OrHash]
        ).void
      end
      attr_writer :ref_ids

      # Sort direction for paginated transaction lists.
      sig { returns(T.nilable(Privy::KrakenEmbedSortingOrder::OrSymbol)) }
      attr_reader :sorting

      sig { params(sorting: Privy::KrakenEmbedSortingOrder::OrSymbol).void }
      attr_writer :sorting

      sig do
        returns(
          T.nilable(T::Array[Privy::KrakenEmbedTransactionStatus::OrSymbol])
        )
      end
      attr_reader :statuses

      sig do
        params(
          statuses: T::Array[Privy::KrakenEmbedTransactionStatus::OrSymbol]
        ).void
      end
      attr_writer :statuses

      sig do
        returns(
          T.nilable(T::Array[Privy::KrakenEmbedTransactionType::OrSymbol])
        )
      end
      attr_reader :types

      sig do
        params(
          types: T::Array[Privy::KrakenEmbedTransactionType::OrSymbol]
        ).void
      end
      attr_writer :types

      sig { returns(T.nilable(Time)) }
      attr_reader :until_time

      sig { params(until_time: Time).void }
      attr_writer :until_time

      # Query parameters for filtering and paginating portfolio transactions.
      sig do
        params(
          assets: T::Array[String],
          cursor: String,
          from_time: Time,
          ids: T::Array[String],
          page_size: Integer,
          quote: String,
          ref_ids:
            T::Array[Privy::KrakenEmbedPortfolioTransactionRefID::OrHash],
          sorting: Privy::KrakenEmbedSortingOrder::OrSymbol,
          statuses: T::Array[Privy::KrakenEmbedTransactionStatus::OrSymbol],
          types: T::Array[Privy::KrakenEmbedTransactionType::OrSymbol],
          until_time: Time
        ).returns(T.attached_class)
      end
      def self.new(
        assets: nil,
        cursor: nil,
        from_time: nil,
        ids: nil,
        page_size: nil,
        quote: nil,
        ref_ids: nil,
        # Sort direction for paginated transaction lists.
        sorting: nil,
        statuses: nil,
        types: nil,
        until_time: nil
      )
      end

      sig do
        override.returns(
          {
            assets: T::Array[String],
            cursor: String,
            from_time: Time,
            ids: T::Array[String],
            page_size: Integer,
            quote: String,
            ref_ids: T::Array[Privy::KrakenEmbedPortfolioTransactionRefID],
            sorting: Privy::KrakenEmbedSortingOrder::OrSymbol,
            statuses: T::Array[Privy::KrakenEmbedTransactionStatus::OrSymbol],
            types: T::Array[Privy::KrakenEmbedTransactionType::OrSymbol],
            until_time: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
