# typed: strong

module Privy
  module Models
    module Wallets
      class TmmfWalletResponse < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Privy::Wallets::TmmfWalletResponse, Privy::Internal::AnyHash)
          end

        # Blockchain address of the registered wallet.
        sig { returns(String) }
        attr_accessor :address

        # Chain the fund is held on, e.g. "ethereum_sepolia".
        sig { returns(String) }
        attr_accessor :chain

        # Unix timestamp in milliseconds when the wallet registration was created.
        sig { returns(Integer) }
        attr_accessor :created_at

        # The fund provider.
        sig { returns(Privy::Wallets::TmmfProvider::Variants) }
        attr_accessor :provider

        # A registered wallet's status with its tMMF provider, read live from the
        # provider.
        sig do
          returns(T.nilable(Privy::Wallets::TmmfProviderWalletStatus::Variants))
        end
        attr_accessor :status

        # Unix timestamp in milliseconds when the wallet registration was last updated.
        sig { returns(Integer) }
        attr_accessor :updated_at

        # ID of the Privy user the wallet is registered for.
        sig { returns(String) }
        attr_accessor :user_id

        # ID of the Privy wallet registered to trade and hold fund shares.
        sig { returns(String) }
        attr_accessor :wallet_id

        # A Privy wallet registered for a user with one tMMF provider on one chain.
        sig do
          params(
            address: String,
            chain: String,
            created_at: Integer,
            provider: T.any(Privy::Wallets::TmmfProvider::OrSymbol, String),
            status:
              T.nilable(
                T.any(
                  Privy::Wallets::TmmfProviderWalletStatus::OrSymbol,
                  String
                )
              ),
            updated_at: Integer,
            user_id: String,
            wallet_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Blockchain address of the registered wallet.
          address:,
          # Chain the fund is held on, e.g. "ethereum_sepolia".
          chain:,
          # Unix timestamp in milliseconds when the wallet registration was created.
          created_at:,
          # The fund provider.
          provider:,
          # A registered wallet's status with its tMMF provider, read live from the
          # provider.
          status:,
          # Unix timestamp in milliseconds when the wallet registration was last updated.
          updated_at:,
          # ID of the Privy user the wallet is registered for.
          user_id:,
          # ID of the Privy wallet registered to trade and hold fund shares.
          wallet_id:
        )
        end

        sig do
          override.returns(
            {
              address: String,
              chain: String,
              created_at: Integer,
              provider: Privy::Wallets::TmmfProvider::Variants,
              status:
                T.nilable(Privy::Wallets::TmmfProviderWalletStatus::Variants),
              updated_at: Integer,
              user_id: String,
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
