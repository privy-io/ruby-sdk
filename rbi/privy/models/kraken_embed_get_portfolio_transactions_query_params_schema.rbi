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
          T.nilable(
            T::Array[
              Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::RefID
            ]
          )
        )
      end
      attr_reader :ref_ids

      sig do
        params(
          ref_ids:
            T::Array[
              Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::RefID::OrHash
            ]
        ).void
      end
      attr_writer :ref_ids

      sig do
        returns(
          T.nilable(
            Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Sorting::OrSymbol
          )
        )
      end
      attr_reader :sorting

      sig do
        params(
          sorting:
            Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Sorting::OrSymbol
        ).void
      end
      attr_writer :sorting

      sig do
        returns(
          T.nilable(
            T::Array[
              Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Status::OrSymbol
            ]
          )
        )
      end
      attr_reader :statuses

      sig do
        params(
          statuses:
            T::Array[
              Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Status::OrSymbol
            ]
        ).void
      end
      attr_writer :statuses

      sig do
        returns(
          T.nilable(
            T::Array[
              Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Type::OrSymbol
            ]
          )
        )
      end
      attr_reader :types

      sig do
        params(
          types:
            T::Array[
              Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Type::OrSymbol
            ]
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
            T::Array[
              Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::RefID::OrHash
            ],
          sorting:
            Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Sorting::OrSymbol,
          statuses:
            T::Array[
              Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Status::OrSymbol
            ],
          types:
            T::Array[
              Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Type::OrSymbol
            ],
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
            ref_ids:
              T::Array[
                Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::RefID
              ],
            sorting:
              Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Sorting::OrSymbol,
            statuses:
              T::Array[
                Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Status::OrSymbol
              ],
            types:
              T::Array[
                Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Type::OrSymbol
              ],
            until_time: Time
          }
        )
      end
      def to_hash
      end

      class RefID < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::RefID,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :ref_id

        sig do
          returns(
            Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::RefID::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            ref_id: String,
            type:
              Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::RefID::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(ref_id:, type:)
        end

        sig do
          override.returns(
            {
              ref_id: String,
              type:
                Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::RefID::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::RefID::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SIMPLE_ORDER_QUOTE =
            T.let(
              :simple_order_quote,
              Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::RefID::Type::TaggedSymbol
            )
          SIMPLE_ORDER_QUOTE_FAILED =
            T.let(
              :simple_order_quote_failed,
              Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::RefID::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::RefID::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      module Sorting
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Sorting
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DESCENDING =
          T.let(
            :descending,
            Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Sorting::TaggedSymbol
          )
        ASCENDING =
          T.let(
            :ascending,
            Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Sorting::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Sorting::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UNSPECIFIED =
          T.let(
            :unspecified,
            Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Status::TaggedSymbol
          )
        IN_PROGRESS =
          T.let(
            :in_progress,
            Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Status::TaggedSymbol
          )
        SUCCESSFUL =
          T.let(
            :successful,
            Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SIMPLE_ORDER =
          T.let(
            :simple_order,
            Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Type::TaggedSymbol
          )
        SIMPLE_ORDER_FAILED =
          T.let(
            :simple_order_failed,
            Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Type::TaggedSymbol
          )
        EARN_REWARD =
          T.let(
            :earn_reward,
            Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedGetPortfolioTransactionsQueryParamsSchema::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
