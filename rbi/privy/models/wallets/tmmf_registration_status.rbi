# typed: strong

module Privy
  module Models
    module Wallets
      # A user's registration status with a tMMF provider, read live from the provider.
      module TmmfRegistrationStatus
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(Privy::Wallets::TmmfRegistrationStatus::TaggedSymbol, String)
          end

        sig do
          override.returns(
            T::Array[Privy::Wallets::TmmfRegistrationStatus::Variants]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::Wallets::TmmfRegistrationStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:pending, Privy::Wallets::TmmfRegistrationStatus::TaggedSymbol)
        ACTION_REQUIRED =
          T.let(
            :action_required,
            Privy::Wallets::TmmfRegistrationStatus::TaggedSymbol
          )
        APPROVED =
          T.let(:approved, Privy::Wallets::TmmfRegistrationStatus::TaggedSymbol)
        REJECTED =
          T.let(:rejected, Privy::Wallets::TmmfRegistrationStatus::TaggedSymbol)
        SUSPENDED =
          T.let(
            :suspended,
            Privy::Wallets::TmmfRegistrationStatus::TaggedSymbol
          )
      end
    end
  end
end
