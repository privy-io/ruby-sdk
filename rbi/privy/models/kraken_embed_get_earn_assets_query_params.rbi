# typed: strong

module Privy
  module Models
    class KrakenEmbedGetEarnAssetsQueryParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedGetEarnAssetsQueryParams,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :assets

      sig { params(assets: T::Array[String]).void }
      attr_writer :assets

      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      sig { returns(T.nilable(String)) }
      attr_reader :user

      sig { params(user: String).void }
      attr_writer :user

      # Query parameters for listing earn assets.
      sig do
        params(
          assets: T::Array[String],
          currency: String,
          user: String
        ).returns(T.attached_class)
      end
      def self.new(assets: nil, currency: nil, user: nil)
      end

      sig do
        override.returns(
          { assets: T::Array[String], currency: String, user: String }
        )
      end
      def to_hash
      end
    end
  end
end
