# typed: strong

module Privy
  module Models
    class DepositStartedDestination < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::DepositStartedDestination, Privy::Internal::AnyHash)
        end

      # The crypto asset the deposit is converted into (e.g. "usdc").
      sig { returns(String) }
      attr_accessor :asset

      # The chain the converted crypto is delivered on (e.g. "base").
      sig { returns(String) }
      attr_accessor :chain

      # The crypto asset and chain the fiat deposit is being converted into.
      sig { params(asset: String, chain: String).returns(T.attached_class) }
      def self.new(
        # The crypto asset the deposit is converted into (e.g. "usdc").
        asset:,
        # The chain the converted crypto is delivered on (e.g. "base").
        chain:
      )
      end

      sig { override.returns({ asset: String, chain: String }) }
      def to_hash
      end
    end
  end
end
