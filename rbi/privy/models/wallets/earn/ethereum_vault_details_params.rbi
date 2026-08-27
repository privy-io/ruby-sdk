# typed: strong

module Privy
  module Models
    module Wallets
      module Earn
        class EthereumVaultDetailsParams < Privy::Internal::Type::BaseModel
          extend Privy::Internal::Type::RequestParameters::Converter
          include Privy::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Privy::Wallets::Earn::EthereumVaultDetailsParams,
                Privy::Internal::AnyHash
              )
            end

          # The Privy vault ID.
          sig { returns(String) }
          attr_accessor :vault_id

          sig do
            params(
              vault_id: String,
              request_options: Privy::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The Privy vault ID.
            vault_id:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              { vault_id: String, request_options: Privy::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
