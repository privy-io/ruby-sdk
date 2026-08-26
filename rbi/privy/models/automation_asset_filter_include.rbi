# typed: strong

module Privy
  module Models
    class AutomationAssetFilterInclude < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AutomationAssetFilterInclude, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::AutomationAssetFilterInclude::Mode::OrSymbol) }
      attr_accessor :mode

      sig { returns(T::Array[Privy::AutomationAssetSpec]) }
      attr_accessor :values

      # Match only the specified assets.
      sig do
        params(
          mode: Privy::AutomationAssetFilterInclude::Mode::OrSymbol,
          values: T::Array[Privy::AutomationAssetSpec::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(mode:, values:)
      end

      sig do
        override.returns(
          {
            mode: Privy::AutomationAssetFilterInclude::Mode::OrSymbol,
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
            T.all(Symbol, Privy::AutomationAssetFilterInclude::Mode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INCLUDE =
          T.let(
            :include,
            Privy::AutomationAssetFilterInclude::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::AutomationAssetFilterInclude::Mode::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
