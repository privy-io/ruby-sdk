# typed: strong

module Privy
  module Models
    class AutomationAssetFilterInputInclude < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::AutomationAssetFilterInputInclude,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(Privy::AutomationAssetFilterInputInclude::Mode::OrSymbol) }
      attr_accessor :mode

      sig { returns(T::Array[Privy::AutomationAssetSpecInput]) }
      attr_accessor :values

      # Match only the specified assets (input form with alias support).
      sig do
        params(
          mode: Privy::AutomationAssetFilterInputInclude::Mode::OrSymbol,
          values: T::Array[Privy::AutomationAssetSpecInput::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(mode:, values:)
      end

      sig do
        override.returns(
          {
            mode: Privy::AutomationAssetFilterInputInclude::Mode::OrSymbol,
            values: T::Array[Privy::AutomationAssetSpecInput]
          }
        )
      end
      def to_hash
      end

      module Mode
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::AutomationAssetFilterInputInclude::Mode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INCLUDE =
          T.let(
            :include,
            Privy::AutomationAssetFilterInputInclude::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::AutomationAssetFilterInputInclude::Mode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
