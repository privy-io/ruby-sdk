# typed: strong

module Privy
  module Models
    class KrakenEmbedListCustomOrdersQueryParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedListCustomOrdersQueryParams,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :user_id

      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      sig do
        returns(
          T.nilable(
            Privy::KrakenEmbedListCustomOrdersQueryParams::Statuses::Variants
          )
        )
      end
      attr_reader :statuses

      sig do
        params(
          statuses:
            Privy::KrakenEmbedListCustomOrdersQueryParams::Statuses::Variants
        ).void
      end
      attr_writer :statuses

      # Query parameters for listing custom orders.
      sig do
        params(
          user_id: String,
          cursor: String,
          statuses:
            Privy::KrakenEmbedListCustomOrdersQueryParams::Statuses::Variants
        ).returns(T.attached_class)
      end
      def self.new(user_id:, cursor: nil, statuses: nil)
      end

      sig do
        override.returns(
          {
            user_id: String,
            cursor: String,
            statuses:
              Privy::KrakenEmbedListCustomOrdersQueryParams::Statuses::Variants
          }
        )
      end
      def to_hash
      end

      module Statuses
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              T::Array[Privy::KrakenEmbedCustomOrderStatusValue::TaggedSymbol],
              String
            )
          end

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedListCustomOrdersQueryParams::Statuses::Variants
            ]
          )
        end
        def self.variants
        end

        KrakenEmbedCustomOrderStatusValueArray =
          T.let(
            Privy::Internal::Type::ArrayOf[
              enum: Privy::KrakenEmbedCustomOrderStatusValue
            ],
            Privy::Internal::Type::Converter
          )
      end
    end
  end
end
