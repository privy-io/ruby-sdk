# typed: strong

module Privy
  module Models
    class AutomationAssetFilterAll < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AutomationAssetFilterAll, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::AutomationAssetFilterAll::Mode::OrSymbol) }
      attr_accessor :mode

      # Match all assets.
      sig do
        params(mode: Privy::AutomationAssetFilterAll::Mode::OrSymbol).returns(
          T.attached_class
        )
      end
      def self.new(mode:)
      end

      sig do
        override.returns(
          { mode: Privy::AutomationAssetFilterAll::Mode::OrSymbol }
        )
      end
      def to_hash
      end

      module Mode
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::AutomationAssetFilterAll::Mode) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL = T.let(:all, Privy::AutomationAssetFilterAll::Mode::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::AutomationAssetFilterAll::Mode::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
