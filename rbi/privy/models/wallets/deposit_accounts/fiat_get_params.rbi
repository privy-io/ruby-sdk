# typed: strong

module Privy
  module Models
    module Wallets
      module DepositAccounts
        class FiatGetParams < Privy::Internal::Type::BaseModel
          extend Privy::Internal::Type::RequestParameters::Converter
          include Privy::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Privy::Wallets::DepositAccounts::FiatGetParams,
                Privy::Internal::AnyHash
              )
            end

          # The ID of the wallet.
          sig { returns(String) }
          attr_accessor :wallet_id

          # The ID of the fiat deposit account.
          sig { returns(String) }
          attr_accessor :deposit_account_id

          sig do
            params(
              wallet_id: String,
              deposit_account_id: String,
              request_options: Privy::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The ID of the wallet.
            wallet_id:,
            # The ID of the fiat deposit account.
            deposit_account_id:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                wallet_id: String,
                deposit_account_id: String,
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
