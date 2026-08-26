# typed: strong

module Privy
  module Models
    class AutomationAssetFilterExclude < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AutomationAssetFilterExclude, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::AutomationAssetFilterExclude::Mode::OrSymbol) }
      attr_accessor :mode

      sig { returns(T::Array[Privy::AutomationAssetSpec]) }
      attr_accessor :values

      # Match all assets except the specified ones.
      sig do
        params(
          mode: Privy::AutomationAssetFilterExclude::Mode::OrSymbol,
          values: T::Array[Privy::AutomationAssetSpec::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(mode:, values:)
      end

      sig do
        override.returns(
          {
            mode: Privy::AutomationAssetFilterExclude::Mode::OrSymbol,
            values: T::Array[Privy::AutomationAssetSpec]
          }
        )
      end
      def to_hash
      end

      module Mode
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::AutomationAssetFilterExclude::Mode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXCLUDE =
          T.let(
            :exclude,
            Privy::AutomationAssetFilterExclude::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::AutomationAssetFilterExclude::Mode::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
