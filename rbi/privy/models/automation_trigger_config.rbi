# typed: strong

module Privy
  module Models
    class AutomationTriggerConfig < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AutomationTriggerConfig, Privy::Internal::AnyHash)
        end

      # Which assets to include/exclude for an automation trigger.
      sig do
        returns(
          T.any(
            Privy::AutomationAssetFilterAll,
            Privy::AutomationAssetFilterInclude,
            Privy::AutomationAssetFilterExclude
          )
        )
      end
      attr_accessor :assets

      sig { returns(Privy::AutomationTriggerConfig::Type::OrSymbol) }
      attr_accessor :type

      # Trigger configuration for deposit events.
      sig do
        params(
          assets:
            T.any(
              Privy::AutomationAssetFilterAll::OrHash,
              Privy::AutomationAssetFilterInclude::OrHash,
              Privy::AutomationAssetFilterExclude::OrHash
            ),
          type: Privy::AutomationTriggerConfig::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Which assets to include/exclude for an automation trigger.
        assets:,
        type:
      )
      end

      sig do
        override.returns(
          {
            assets:
              T.any(
                Privy::AutomationAssetFilterAll,
                Privy::AutomationAssetFilterInclude,
                Privy::AutomationAssetFilterExclude
              ),
            type: Privy::AutomationTriggerConfig::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::AutomationTriggerConfig::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DEPOSIT =
          T.let(:deposit, Privy::AutomationTriggerConfig::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::AutomationTriggerConfig::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
