# typed: strong

module Privy
  module Models
    module Wallets
      module Earn
        module Ethereum
          class IncentiveListParams < Privy::Internal::Type::BaseModel
            extend Privy::Internal::Type::RequestParameters::Converter
            include Privy::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Privy::Wallets::Earn::Ethereum::IncentiveListParams,
                  Privy::Internal::AnyHash
                )
              end

            # ID of the wallet.
            sig { returns(String) }
            attr_accessor :wallet_id

            # Chain name to fetch rewards for (e.g. "tempo", "base").
            sig { returns(String) }
            attr_accessor :chain

            sig do
              params(
                wallet_id: String,
                chain: String,
                request_options: Privy::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # ID of the wallet.
              wallet_id:,
              # Chain name to fetch rewards for (e.g. "tempo", "base").
              chain:,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  wallet_id: String,
                  chain: String,
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
end
