# typed: strong

module Privy
  module Models
    module Wallets
      class TmmfUserWalletResponse < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::TmmfUserWalletResponse,
              Privy::Internal::AnyHash
            )
          end

        # Blockchain address of the registered wallet.
        sig { returns(String) }
        attr_accessor :address

        # Chain the fund is held on, e.g. "ethereum_sepolia".
        sig { returns(String) }
        attr_accessor :chain

        # The fund provider.
        sig { returns(Privy::Wallets::TmmfProvider::Variants) }
        attr_accessor :provider

        # A registered wallet's status with its tMMF provider, read live from the
        # provider.
        sig do
          returns(T.nilable(Privy::Wallets::TmmfProviderWalletStatus::Variants))
        end
        attr_accessor :status

        # ID of the registered Privy wallet.
        sig { returns(String) }
        attr_accessor :wallet_id

        # A wallet registered for a user with a provider on one chain.
        sig do
          params(
            address: String,
            chain: String,
            provider: T.any(Privy::Wallets::TmmfProvider::OrSymbol, String),
            status:
              T.nilable(
                T.any(
                  Privy::Wallets::TmmfProviderWalletStatus::OrSymbol,
                  String
                )
              ),
            wallet_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Blockchain address of the registered wallet.
          address:,
          # Chain the fund is held on, e.g. "ethereum_sepolia".
          chain:,
          # The fund provider.
          provider:,
          # A registered wallet's status with its tMMF provider, read live from the
          # provider.
          status:,
          # ID of the registered Privy wallet.
          wallet_id:
        )
        end

        sig do
          override.returns(
            {
              address: String,
              chain: String,
              provider: Privy::Wallets::TmmfProvider::Variants,
              status:
                T.nilable(Privy::Wallets::TmmfProviderWalletStatus::Variants),
              wallet_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
