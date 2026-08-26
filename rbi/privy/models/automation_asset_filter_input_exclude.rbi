# typed: strong

module Privy
  module Models
    class AutomationAssetFilterInputExclude < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::AutomationAssetFilterInputExclude,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(Privy::AutomationAssetFilterInputExclude::Mode::OrSymbol) }
      attr_accessor :mode

      sig { returns(T::Array[Privy::AutomationAssetSpecInput]) }
      attr_accessor :values

      # Match all assets except the specified ones (input form with alias support).
      sig do
        params(
          mode: Privy::AutomationAssetFilterInputExclude::Mode::OrSymbol,
          values: T::Array[Privy::AutomationAssetSpecInput::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(mode:, values:)
      end

      sig do
        override.returns(
          {
            mode: Privy::AutomationAssetFilterInputExclude::Mode::OrSymbol,
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
            T.all(Symbol, Privy::AutomationAssetFilterInputExclude::Mode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXCLUDE =
          T.let(
            :exclude,
            Privy::AutomationAssetFilterInputExclude::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::AutomationAssetFilterInputExclude::Mode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
