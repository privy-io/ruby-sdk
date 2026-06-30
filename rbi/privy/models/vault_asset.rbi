# typed: strong

module Privy
  module Models
    class VaultAsset < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::VaultAsset, Privy::Internal::AnyHash) }

      # Token contract address.
      sig { returns(String) }
      attr_accessor :address

      # Token symbol (e.g., "USDC").
      sig { returns(String) }
      attr_accessor :symbol

      # The underlying token of a vault position.
      sig { params(address: String, symbol: String).returns(T.attached_class) }
      def self.new(
        # Token contract address.
        address:,
        # Token symbol (e.g., "USDC").
        symbol:
      )
      end

      sig { override.returns({ address: String, symbol: String }) }
      def to_hash
      end
    end
  end
end
