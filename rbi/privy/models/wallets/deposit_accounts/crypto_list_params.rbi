# typed: strong

module Privy
  module Models
    module Wallets
      module DepositAccounts
        class CryptoListParams < Privy::Internal::Type::BaseModel
          extend Privy::Internal::Type::RequestParameters::Converter
          include Privy::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Privy::Wallets::DepositAccounts::CryptoListParams,
                Privy::Internal::AnyHash
              )
            end

          # ID of the wallet.
          sig { returns(String) }
          attr_accessor :wallet_id

          sig { returns(T.nilable(String)) }
          attr_reader :cursor

          sig { params(cursor: String).void }
          attr_writer :cursor

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          sig do
            params(
              wallet_id: String,
              cursor: String,
              limit: Integer,
              request_options: Privy::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # ID of the wallet.
            wallet_id:,
            cursor: nil,
            limit: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                wallet_id: String,
                cursor: String,
                limit: Integer,
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
