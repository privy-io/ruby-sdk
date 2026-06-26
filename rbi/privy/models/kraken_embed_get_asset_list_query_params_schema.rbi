# typed: strong

module Privy
  module Models
    class KrakenEmbedGetAssetListQueryParamsSchema < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedGetAssetListQueryParamsSchema,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :filter_assets

      sig { params(filter_assets: T::Array[String]).void }
      attr_writer :filter_assets

      sig do
        returns(
          T.nilable(
            T::Array[
              T.any(
                Privy::KrakenEmbedGetAssetListQueryParamsSchema::FilterPlatformStatus::OrSymbol,
                String
              )
            ]
          )
        )
      end
      attr_reader :filter_platform_statuses

      sig do
        params(
          filter_platform_statuses:
            T::Array[
              T.any(
                Privy::KrakenEmbedGetAssetListQueryParamsSchema::FilterPlatformStatus::OrSymbol,
                String
              )
            ]
        ).void
      end
      attr_writer :filter_platform_statuses

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :filter_tradable_only

      sig { returns(T.nilable(String)) }
      attr_reader :filter_user

      sig { params(filter_user: String).void }
      attr_writer :filter_user

      sig { returns(T.nilable(String)) }
      attr_reader :lang

      sig { params(lang: String).void }
      attr_writer :lang

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig { returns(T.nilable(String)) }
      attr_reader :quote

      sig { params(quote: String).void }
      attr_writer :quote

      # Sorting options for the asset list endpoint.
      sig { returns(T.nilable(Privy::KrakenEmbedAssetSortOption::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Privy::KrakenEmbedAssetSortOption::OrSymbol).void }
      attr_writer :sort

      # Query parameters for listing and filtering available assets.
      sig do
        params(
          filter_assets: T::Array[String],
          filter_platform_statuses:
            T::Array[
              T.any(
                Privy::KrakenEmbedGetAssetListQueryParamsSchema::FilterPlatformStatus::OrSymbol,
                String
              )
            ],
          filter_tradable_only: T.nilable(T::Boolean),
          filter_user: String,
          lang: String,
          page_number: Integer,
          page_size: Integer,
          quote: String,
          sort: Privy::KrakenEmbedAssetSortOption::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        filter_assets: nil,
        filter_platform_statuses: nil,
        filter_tradable_only: nil,
        filter_user: nil,
        lang: nil,
        page_number: nil,
        page_size: nil,
        quote: nil,
        # Sorting options for the asset list endpoint.
        sort: nil
      )
      end

      sig do
        override.returns(
          {
            filter_assets: T::Array[String],
            filter_platform_statuses:
              T::Array[
                T.any(
                  Privy::KrakenEmbedGetAssetListQueryParamsSchema::FilterPlatformStatus::OrSymbol,
                  String
                )
              ],
            filter_tradable_only: T.nilable(T::Boolean),
            filter_user: String,
            lang: String,
            page_number: Integer,
            page_size: Integer,
            quote: String,
            sort: Privy::KrakenEmbedAssetSortOption::OrSymbol
          }
        )
      end
      def to_hash
      end

      module FilterPlatformStatus
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Privy::KrakenEmbedGetAssetListQueryParamsSchema::FilterPlatformStatus::TaggedSymbol,
              String
            )
          end

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedGetAssetListQueryParamsSchema::FilterPlatformStatus::Variants
            ]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::KrakenEmbedGetAssetListQueryParamsSchema::FilterPlatformStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(
            :enabled,
            Privy::KrakenEmbedGetAssetListQueryParamsSchema::FilterPlatformStatus::TaggedSymbol
          )
        DEPOSIT_ONLY =
          T.let(
            :deposit_only,
            Privy::KrakenEmbedGetAssetListQueryParamsSchema::FilterPlatformStatus::TaggedSymbol
          )
        WITHDRAWAL_ONLY =
          T.let(
            :withdrawal_only,
            Privy::KrakenEmbedGetAssetListQueryParamsSchema::FilterPlatformStatus::TaggedSymbol
          )
        FUNDING_TEMPORARILY_DISABLED =
          T.let(
            :funding_temporarily_disabled,
            Privy::KrakenEmbedGetAssetListQueryParamsSchema::FilterPlatformStatus::TaggedSymbol
          )
        DISABLED =
          T.let(
            :disabled,
            Privy::KrakenEmbedGetAssetListQueryParamsSchema::FilterPlatformStatus::TaggedSymbol
          )
      end
    end
  end
end
