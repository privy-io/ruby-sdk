# typed: strong

module Privy
  module Models
    class TransactionScanningAssetInfo < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransactionScanningAssetInfo, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(Float)) }
      attr_reader :decimals

      sig { params(decimals: Float).void }
      attr_writer :decimals

      sig { returns(T.nilable(String)) }
      attr_reader :logo_url

      sig { params(logo_url: String).void }
      attr_writer :logo_url

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(String)) }
      attr_reader :symbol

      sig { params(symbol: String).void }
      attr_writer :symbol

      sig { returns(T.nilable(String)) }
      attr_reader :type

      sig { params(type: String).void }
      attr_writer :type

      # Information about the moving asset in a transaction scan.
      sig do
        params(
          decimals: Float,
          logo_url: String,
          name: String,
          symbol: String,
          type: String
        ).returns(T.attached_class)
      end
      def self.new(
        decimals: nil,
        logo_url: nil,
        name: nil,
        symbol: nil,
        type: nil
      )
      end

      sig do
        override.returns(
          {
            decimals: Float,
            logo_url: String,
            name: String,
            symbol: String,
            type: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
