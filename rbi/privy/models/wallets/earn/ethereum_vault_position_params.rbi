# typed: strong

module Privy
  module Models
    module Wallets
      module Earn
        class EthereumVaultPositionParams < Privy::Internal::Type::BaseModel
          extend Privy::Internal::Type::RequestParameters::Converter
          include Privy::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Privy::Wallets::Earn::EthereumVaultPositionParams,
                Privy::Internal::AnyHash
              )
            end

          # ID of the wallet.
          sig { returns(String) }
          attr_accessor :wallet_id

          # The vault ID to get position for.
          sig { returns(String) }
          attr_accessor :vault_id

          # Include archived wallets in lookup. Defaults to false.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :include_archived

          sig { params(include_archived: T::Boolean).void }
          attr_writer :include_archived

          sig do
            params(
              wallet_id: String,
              vault_id: String,
              include_archived: T::Boolean,
              request_options: Privy::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # ID of the wallet.
            wallet_id:,
            # The vault ID to get position for.
            vault_id:,
            # Include archived wallets in lookup. Defaults to false.
            include_archived: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                wallet_id: String,
                vault_id: String,
                include_archived: T::Boolean,
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
