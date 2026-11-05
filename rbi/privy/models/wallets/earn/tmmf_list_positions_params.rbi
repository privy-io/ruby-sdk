# typed: strong

module Privy
  module Models
    module Wallets
      module Earn
        class TmmfListPositionsParams < Privy::Internal::Type::BaseModel
          extend Privy::Internal::Type::RequestParameters::Converter
          include Privy::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Privy::Wallets::Earn::TmmfListPositionsParams,
                Privy::Internal::AnyHash
              )
            end

          # ID of the wallet.
          sig { returns(String) }
          attr_accessor :wallet_id

          # Chain the fund is held on, e.g. "ethereum_sepolia".
          sig { returns(T.nilable(String)) }
          attr_reader :chain

          sig { params(chain: String).void }
          attr_writer :chain

          # Cursor returned by the previous page.
          sig { returns(T.nilable(String)) }
          attr_reader :cursor

          sig { params(cursor: String).void }
          attr_writer :cursor

          # Fund ticker, e.g. "WTGXX". Case-insensitive.
          sig { returns(T.nilable(String)) }
          attr_reader :fund

          sig { params(fund: String).void }
          attr_writer :fund

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

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

          sig do
            params(
              wallet_id: String,
              chain: String,
              cursor: String,
              fund: String,
              limit: Integer,
              provider: T.any(Privy::Wallets::TmmfProvider::OrSymbol, String),
              request_options: Privy::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # ID of the wallet.
            wallet_id:,
            # Chain the fund is held on, e.g. "ethereum_sepolia".
            chain: nil,
            # Cursor returned by the previous page.
            cursor: nil,
            # Fund ticker, e.g. "WTGXX". Case-insensitive.
            fund: nil,
            limit: nil,
            # The fund provider.
            provider: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                wallet_id: String,
                chain: String,
                cursor: String,
                fund: String,
                limit: Integer,
                provider: T.any(Privy::Wallets::TmmfProvider::OrSymbol, String),
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
