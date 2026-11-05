# typed: strong

module Privy
  module Models
    module Wallets
      class TmmfRegisterRequestBody < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::TmmfRegisterRequestBody,
              Privy::Internal::AnyHash
            )
          end

        # Chain the fund is held on, e.g. "ethereum_sepolia".
        sig { returns(String) }
        attr_accessor :chain

        # The fund provider.
        sig { returns(T.any(Privy::Wallets::TmmfProvider::OrSymbol, String)) }
        attr_accessor :provider

        # Request body for registering a wallet with a tMMF provider for the wallet's
        # user, e.g. an organization.
        sig do
          params(
            chain: String,
            provider: T.any(Privy::Wallets::TmmfProvider::OrSymbol, String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Chain the fund is held on, e.g. "ethereum_sepolia".
          chain:,
          # The fund provider.
          provider:
        )
        end

        sig do
          override.returns(
            {
              chain: String,
              provider: T.any(Privy::Wallets::TmmfProvider::OrSymbol, String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
