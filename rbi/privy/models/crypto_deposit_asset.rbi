# typed: strong

module Privy
  module Models
    class CryptoDepositAsset < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CryptoDepositAsset, Privy::Internal::AnyHash)
        end

      # Known alias (usdc) or raw asset address.
      sig { returns(String) }
      attr_accessor :asset

      # Known alias (base) or CAIP-2.
      sig { returns(String) }
      attr_accessor :chain

      # An asset on a chain. Uses a human-readable alias (usdc, base) when one is on
      # file, otherwise the raw asset address and CAIP-2.
      sig { params(asset: String, chain: String).returns(T.attached_class) }
      def self.new(
        # Known alias (usdc) or raw asset address.
        asset:,
        # Known alias (base) or CAIP-2.
        chain:
      )
      end

      sig { override.returns({ asset: String, chain: String }) }
      def to_hash
      end
    end
  end
end
