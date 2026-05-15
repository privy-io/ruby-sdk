# typed: strong

module Privy
  module Models
    class SparkSigningKeyshare < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SparkSigningKeyshare, Privy::Internal::AnyHash)
        end

      sig { returns(T::Array[String]) }
      attr_accessor :owner_identifiers

      sig { returns(String) }
      attr_accessor :public_key

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :public_shares

      sig { returns(Float) }
      attr_accessor :threshold

      sig { returns(String) }
      attr_accessor :updated_time

      # A Spark signing keyshare.
      sig do
        params(
          owner_identifiers: T::Array[String],
          public_key: String,
          public_shares: T::Hash[Symbol, String],
          threshold: Float,
          updated_time: String
        ).returns(T.attached_class)
      end
      def self.new(
        owner_identifiers:,
        public_key:,
        public_shares:,
        threshold:,
        updated_time:
      )
      end

      sig do
        override.returns(
          {
            owner_identifiers: T::Array[String],
            public_key: String,
            public_shares: T::Hash[Symbol, String],
            threshold: Float,
            updated_time: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
