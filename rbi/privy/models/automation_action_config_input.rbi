# typed: strong

module Privy
  module Models
    class AutomationActionConfigInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AutomationActionConfigInput, Privy::Internal::AnyHash)
        end

      # A destination asset spec accepting either raw identifiers (asset_address, caip2)
      # or human-readable aliases (asset, chain). Exactly one of asset_address or asset
      # must be provided; exactly one of caip2 or chain must be provided.
      sig { returns(Privy::AutomationDestinationAssetInput) }
      attr_reader :destination_chain_asset

      sig do
        params(
          destination_chain_asset:
            Privy::AutomationDestinationAssetInput::OrHash
        ).void
      end
      attr_writer :destination_chain_asset

      sig { returns(Privy::AutomationActionConfigInput::Type::OrSymbol) }
      attr_accessor :type

      # Action configuration for swap operations (input form with alias support).
      sig do
        params(
          destination_chain_asset:
            Privy::AutomationDestinationAssetInput::OrHash,
          type: Privy::AutomationActionConfigInput::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A destination asset spec accepting either raw identifiers (asset_address, caip2)
        # or human-readable aliases (asset, chain). Exactly one of asset_address or asset
        # must be provided; exactly one of caip2 or chain must be provided.
        destination_chain_asset:,
        type:
      )
      end

      sig do
        override.returns(
          {
            destination_chain_asset: Privy::AutomationDestinationAssetInput,
            type: Privy::AutomationActionConfigInput::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::AutomationActionConfigInput::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SWAP =
          T.let(:swap, Privy::AutomationActionConfigInput::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::AutomationActionConfigInput::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
