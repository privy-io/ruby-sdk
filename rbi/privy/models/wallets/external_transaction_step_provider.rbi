# typed: strong

module Privy
  module Models
    module Wallets
      # External provider that fills an external transaction step.
      module ExternalTransactionStepProvider
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Privy::Wallets::ExternalTransactionStepProvider::TaggedSymbol,
              String
            )
          end

        sig do
          override.returns(
            T::Array[Privy::Wallets::ExternalTransactionStepProvider::Variants]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::Wallets::ExternalTransactionStepProvider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RELAY =
          T.let(
            :relay,
            Privy::Wallets::ExternalTransactionStepProvider::TaggedSymbol
          )
        TEMPO_ROUTES =
          T.let(
            :tempo_routes,
            Privy::Wallets::ExternalTransactionStepProvider::TaggedSymbol
          )
        BRIDGE =
          T.let(
            :bridge,
            Privy::Wallets::ExternalTransactionStepProvider::TaggedSymbol
          )
      end
    end
  end
end
