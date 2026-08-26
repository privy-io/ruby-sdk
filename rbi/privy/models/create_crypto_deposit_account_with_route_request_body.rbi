# typed: strong

module Privy
  module Models
    class CreateCryptoDepositAccountWithRouteRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CreateCryptoDepositAccountWithRouteRequestBody,
            Privy::Internal::AnyHash
          )
        end

      # A destination asset spec accepting either raw identifiers (asset_address, caip2)
      # or human-readable aliases (asset, chain). Exactly one of asset_address or asset
      # must be provided; exactly one of caip2 or chain must be provided.
      sig { returns(Privy::AutomationDestinationAssetInput) }
      attr_reader :destination

      sig do
        params(destination: Privy::AutomationDestinationAssetInput::OrHash).void
      end
      attr_writer :destination

      # Which assets to include/exclude for an automation trigger (input form with alias
      # support).
      sig do
        returns(
          T.any(
            Privy::AutomationAssetFilterAll,
            Privy::AutomationAssetFilterInputInclude,
            Privy::AutomationAssetFilterInputExclude
          )
        )
      end
      attr_accessor :source

      # Creates a crypto deposit account from an inline source and destination.
      sig do
        params(
          destination: Privy::AutomationDestinationAssetInput::OrHash,
          source:
            T.any(
              Privy::AutomationAssetFilterAll::OrHash,
              Privy::AutomationAssetFilterInputInclude::OrHash,
              Privy::AutomationAssetFilterInputExclude::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # A destination asset spec accepting either raw identifiers (asset_address, caip2)
        # or human-readable aliases (asset, chain). Exactly one of asset_address or asset
        # must be provided; exactly one of caip2 or chain must be provided.
        destination:,
        # Which assets to include/exclude for an automation trigger (input form with alias
        # support).
        source:
      )
      end

      sig do
        override.returns(
          {
            destination: Privy::AutomationDestinationAssetInput,
            source:
              T.any(
                Privy::AutomationAssetFilterAll,
                Privy::AutomationAssetFilterInputInclude,
                Privy::AutomationAssetFilterInputExclude
              )
          }
        )
      end
      def to_hash
      end
    end
  end
end
