# typed: strong

module Privy
  module Models
    class FiatDepositAccountDestination < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FiatDepositAccountDestination, Privy::Internal::AnyHash)
        end

      # Destination crypto asset (e.g. "usdc").
      sig { returns(String) }
      attr_accessor :asset

      # Destination chain (e.g. "base", "tempo").
      sig { returns(String) }
      attr_accessor :chain

      # The destination crypto asset and chain for a fiat deposit account.
      sig { params(asset: String, chain: String).returns(T.attached_class) }
      def self.new(
        # Destination crypto asset (e.g. "usdc").
        asset:,
        # Destination chain (e.g. "base", "tempo").
        chain:
      )
      end

      sig { override.returns({ asset: String, chain: String }) }
      def to_hash
      end
    end
  end
end
