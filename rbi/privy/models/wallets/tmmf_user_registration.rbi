# typed: strong

module Privy
  module Models
    module Wallets
      class TmmfUserRegistration < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::TmmfUserRegistration,
              Privy::Internal::AnyHash
            )
          end

        # The fund provider.
        sig { returns(Privy::Wallets::TmmfProvider::Variants) }
        attr_accessor :provider

        # A user's registration status with a tMMF provider, read live from the provider.
        sig { returns(Privy::Wallets::TmmfRegistrationStatus::Variants) }
        attr_accessor :status

        # A user's registration with one tMMF provider.
        sig do
          params(
            provider: T.any(Privy::Wallets::TmmfProvider::OrSymbol, String),
            status:
              T.any(Privy::Wallets::TmmfRegistrationStatus::OrSymbol, String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The fund provider.
          provider:,
          # A user's registration status with a tMMF provider, read live from the provider.
          status:
        )
        end

        sig do
          override.returns(
            {
              provider: Privy::Wallets::TmmfProvider::Variants,
              status: Privy::Wallets::TmmfRegistrationStatus::Variants
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
