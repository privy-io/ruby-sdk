# typed: strong

module Privy
  module Models
    class SparkTokenBalance < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SparkTokenBalance, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :balance

      # Metadata for a Spark user token.
      sig { returns(Privy::SparkUserTokenMetadata) }
      attr_reader :token_metadata

      sig { params(token_metadata: Privy::SparkUserTokenMetadata::OrHash).void }
      attr_writer :token_metadata

      # Balance of a Spark token.
      sig do
        params(
          balance: String,
          token_metadata: Privy::SparkUserTokenMetadata::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        balance:,
        # Metadata for a Spark user token.
        token_metadata:
      )
      end

      sig do
        override.returns(
          { balance: String, token_metadata: Privy::SparkUserTokenMetadata }
        )
      end
      def to_hash
      end
    end
  end
end
