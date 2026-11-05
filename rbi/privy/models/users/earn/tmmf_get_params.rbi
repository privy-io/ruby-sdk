# typed: strong

module Privy
  module Models
    module Users
      module Earn
        class TmmfGetParams < Privy::Internal::Type::BaseModel
          extend Privy::Internal::Type::RequestParameters::Converter
          include Privy::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(Privy::Users::Earn::TmmfGetParams, Privy::Internal::AnyHash)
            end

          # ID of the Privy user.
          sig { returns(String) }
          attr_accessor :user_id

          # The fund provider.
          sig do
            returns(
              T.nilable(T.any(Privy::Wallets::TmmfProvider::OrSymbol, String))
            )
          end
          attr_reader :provider

          sig do
            params(
              provider: T.any(Privy::Wallets::TmmfProvider::OrSymbol, String)
            ).void
          end
          attr_writer :provider

          # Only return the registration of this wallet.
          sig { returns(T.nilable(String)) }
          attr_reader :wallet_id

          sig { params(wallet_id: String).void }
          attr_writer :wallet_id

          # Cursor returned by the previous page.
          sig { returns(T.nilable(String)) }
          attr_reader :wallets_cursor

          sig { params(wallets_cursor: String).void }
          attr_writer :wallets_cursor

          # Maximum number of wallet registrations to return.
          sig { returns(T.nilable(Integer)) }
          attr_reader :wallets_limit

          sig { params(wallets_limit: Integer).void }
          attr_writer :wallets_limit

          sig do
            params(
              user_id: String,
              provider: T.any(Privy::Wallets::TmmfProvider::OrSymbol, String),
              wallet_id: String,
              wallets_cursor: String,
              wallets_limit: Integer,
              request_options: Privy::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # ID of the Privy user.
            user_id:,
            # The fund provider.
            provider: nil,
            # Only return the registration of this wallet.
            wallet_id: nil,
            # Cursor returned by the previous page.
            wallets_cursor: nil,
            # Maximum number of wallet registrations to return.
            wallets_limit: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                user_id: String,
                provider: T.any(Privy::Wallets::TmmfProvider::OrSymbol, String),
                wallet_id: String,
                wallets_cursor: String,
                wallets_limit: Integer,
                request_options: Privy::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
