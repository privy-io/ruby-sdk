# typed: strong

module Privy
  module Models
    class EarnAsset < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::EarnAsset, Privy::Internal::AnyHash) }

      # Token contract address.
      sig { returns(String) }
      attr_accessor :address

      # Number of decimals for the asset (e.g. 6 for USDC).
      sig { returns(Integer) }
      attr_accessor :decimals

      # Lowercase token symbol (e.g. "usdc").
      sig { returns(String) }
      attr_accessor :symbol

      # Asset metadata for an earn vault position.
      sig do
        params(address: String, decimals: Integer, symbol: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # Token contract address.
        address:,
        # Number of decimals for the asset (e.g. 6 for USDC).
        decimals:,
        # Lowercase token symbol (e.g. "usdc").
        symbol:
      )
      end

      sig do
        override.returns({ address: String, decimals: Integer, symbol: String })
      end
      def to_hash
      end
    end
  end
end
