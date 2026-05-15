# typed: strong

module Privy
  module Models
    class KrakenEmbedGetPortfolioSummaryResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedGetPortfolioSummaryResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(Privy::KrakenEmbedGetPortfolioSummaryResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: Privy::KrakenEmbedGetPortfolioSummaryResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      # High-level summary of a user's portfolio including total value, available
      # balance, and unrealized P&L.
      sig do
        params(
          data: Privy::KrakenEmbedGetPortfolioSummaryResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: Privy::KrakenEmbedGetPortfolioSummaryResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::KrakenEmbedGetPortfolioSummaryResponse::Data,
              Privy::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Privy::KrakenEmbedGetPortfolioSummaryResponse::Data::Result
            )
          )
        end
        attr_reader :result

        sig do
          params(
            result:
              T.nilable(
                Privy::KrakenEmbedGetPortfolioSummaryResponse::Data::Result::OrHash
              )
          ).void
        end
        attr_writer :result

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :error

        sig { params(error: T::Array[String]).void }
        attr_writer :error

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :errors

        sig { params(errors: T::Array[String]).void }
        attr_writer :errors

        sig do
          params(
            result:
              T.nilable(
                Privy::KrakenEmbedGetPortfolioSummaryResponse::Data::Result::OrHash
              ),
            error: T::Array[String],
            errors: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(result:, error: nil, errors: nil)
        end

        sig do
          override.returns(
            {
              result:
                T.nilable(
                  Privy::KrakenEmbedGetPortfolioSummaryResponse::Data::Result
                ),
              error: T::Array[String],
              errors: T::Array[String]
            }
          )
        end
        def to_hash
        end

        class Result < Privy::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Privy::KrakenEmbedGetPortfolioSummaryResponse::Data::Result,
                Privy::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :available_balance

          sig { returns(String) }
          attr_accessor :currency

          sig { returns(String) }
          attr_accessor :open_orders

          sig { returns(String) }
          attr_accessor :portfolio_value

          sig { returns(Time) }
          attr_accessor :timestamp

          sig { returns(String) }
          attr_accessor :withheld_value

          sig { returns(T.nilable(String)) }
          attr_accessor :cost_basis

          # Current day profit and loss for a portfolio, calculated from the most recent
          # available balance.
          sig { returns(T.nilable(Privy::KrakenEmbedCurrentDayPnl)) }
          attr_reader :current_day_pnl

          sig do
            params(
              current_day_pnl:
                T.nilable(Privy::KrakenEmbedCurrentDayPnl::OrHash)
            ).void
          end
          attr_writer :current_day_pnl

          sig { returns(T.nilable(String)) }
          attr_accessor :lots_upnl

          sig do
            params(
              available_balance: String,
              currency: String,
              open_orders: String,
              portfolio_value: String,
              timestamp: Time,
              withheld_value: String,
              cost_basis: T.nilable(String),
              current_day_pnl:
                T.nilable(Privy::KrakenEmbedCurrentDayPnl::OrHash),
              lots_upnl: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            available_balance:,
            currency:,
            open_orders:,
            portfolio_value:,
            timestamp:,
            withheld_value:,
            cost_basis: nil,
            # Current day profit and loss for a portfolio, calculated from the most recent
            # available balance.
            current_day_pnl: nil,
            lots_upnl: nil
          )
          end

          sig do
            override.returns(
              {
                available_balance: String,
                currency: String,
                open_orders: String,
                portfolio_value: String,
                timestamp: Time,
                withheld_value: String,
                cost_basis: T.nilable(String),
                current_day_pnl: T.nilable(Privy::KrakenEmbedCurrentDayPnl),
                lots_upnl: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
