# typed: strong

module Privy
  module Models
    class AutomationDepositTriggerConfigInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::AutomationDepositTriggerConfigInput,
            Privy::Internal::AnyHash
          )
        end

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
      attr_accessor :assets

      sig do
        returns(Privy::AutomationDepositTriggerConfigInput::Type::OrSymbol)
      end
      attr_accessor :type

      # Trigger configuration for deposit events (input form with alias support).
      sig do
        params(
          assets:
            T.any(
              Privy::AutomationAssetFilterAll::OrHash,
              Privy::AutomationAssetFilterInputInclude::OrHash,
              Privy::AutomationAssetFilterInputExclude::OrHash
            ),
          type: Privy::AutomationDepositTriggerConfigInput::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Which assets to include/exclude for an automation trigger (input form with alias
        # support).
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
                Privy::AutomationAssetFilterInputInclude,
                Privy::AutomationAssetFilterInputExclude
              ),
            type: Privy::AutomationDepositTriggerConfigInput::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::AutomationDepositTriggerConfigInput::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DEPOSIT =
          T.let(
            :deposit,
            Privy::AutomationDepositTriggerConfigInput::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::AutomationDepositTriggerConfigInput::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
