# typed: strong

module Privy
  module Models
    module Wallets
      module DepositAccounts
        class CryptoSearchConfigParams < Privy::Internal::Type::BaseModel
          extend Privy::Internal::Type::RequestParameters::Converter
          include Privy::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Privy::Wallets::DepositAccounts::CryptoSearchConfigParams,
                Privy::Internal::AnyHash
              )
            end

          # Token symbol, name, or contract address in any chain format.
          sig { returns(String) }
          attr_accessor :q

          sig do
            params(
              q: String,
              request_options: Privy::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Token symbol, name, or contract address in any chain format.
            q:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              { q: String, request_options: Privy::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
