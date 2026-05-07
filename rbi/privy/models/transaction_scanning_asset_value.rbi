# typed: strong

module Privy
  module Models
    class TransactionScanningAssetValue < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransactionScanningAssetValue, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :usd_price

      sig { params(usd_price: String).void }
      attr_writer :usd_price

      sig { returns(T.nilable(String)) }
      attr_reader :value

      sig { params(value: String).void }
      attr_writer :value

      # The value of an asset in a transaction scan result.
      sig { params(usd_price: String, value: String).returns(T.attached_class) }
      def self.new(usd_price: nil, value: nil)
      end

      sig { override.returns({ usd_price: String, value: String }) }
      def to_hash
      end
    end
  end
end
