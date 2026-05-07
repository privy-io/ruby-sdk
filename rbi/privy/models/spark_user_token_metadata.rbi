# typed: strong

module Privy
  module Models
    class SparkUserTokenMetadata < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SparkUserTokenMetadata, Privy::Internal::AnyHash)
        end

      sig { returns(Float) }
      attr_accessor :decimals

      sig { returns(String) }
      attr_accessor :max_supply

      sig { returns(String) }
      attr_accessor :raw_token_identifier

      sig { returns(String) }
      attr_accessor :token_name

      sig { returns(String) }
      attr_accessor :token_public_key

      sig { returns(String) }
      attr_accessor :token_ticker

      # Metadata for a Spark user token.
      sig do
        params(
          decimals: Float,
          max_supply: String,
          raw_token_identifier: String,
          token_name: String,
          token_public_key: String,
          token_ticker: String
        ).returns(T.attached_class)
      end
      def self.new(
        decimals:,
        max_supply:,
        raw_token_identifier:,
        token_name:,
        token_public_key:,
        token_ticker:
      )
      end

      sig do
        override.returns(
          {
            decimals: Float,
            max_supply: String,
            raw_token_identifier: String,
            token_name: String,
            token_public_key: String,
            token_ticker: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
