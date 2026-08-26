# typed: strong

module Privy
  module Models
    class AutomationActionConfig < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AutomationActionConfig, Privy::Internal::AnyHash)
        end

      # Destination asset identified by contract address on a specific chain (CAIP-2).
      sig { returns(Privy::AutomationDestinationAsset) }
      attr_reader :destination_chain_asset

      sig do
        params(
          destination_chain_asset: Privy::AutomationDestinationAsset::OrHash
        ).void
      end
      attr_writer :destination_chain_asset

      sig { returns(Privy::AutomationActionConfig::Type::OrSymbol) }
      attr_accessor :type

      # Action configuration for swap operations.
      sig do
        params(
          destination_chain_asset: Privy::AutomationDestinationAsset::OrHash,
          type: Privy::AutomationActionConfig::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Destination asset identified by contract address on a specific chain (CAIP-2).
        destination_chain_asset:,
        type:
      )
      end

      sig do
        override.returns(
          {
            destination_chain_asset: Privy::AutomationDestinationAsset,
            type: Privy::AutomationActionConfig::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::AutomationActionConfig::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SWAP = T.let(:swap, Privy::AutomationActionConfig::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::AutomationActionConfig::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
