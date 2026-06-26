# typed: strong

module Privy
  module Models
    module Wallets
      class ActionGetParams < Privy::Internal::Type::BaseModel
        extend Privy::Internal::Type::RequestParameters::Converter
        include Privy::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Privy::Wallets::ActionGetParams, Privy::Internal::AnyHash)
          end

        # ID of the wallet.
        sig { returns(String) }
        attr_accessor :wallet_id

        # ID of the wallet action.
        sig { returns(String) }
        attr_accessor :action_id

        # Expandable relations to include on a wallet action response.
        sig do
          returns(T.nilable(Privy::Wallets::WalletActionInclude::OrSymbol))
        end
        attr_reader :include

        sig do
          params(include: Privy::Wallets::WalletActionInclude::OrSymbol).void
        end
        attr_writer :include

        # Request authorization signature. If multiple signatures are required, they
        # should be comma separated.
        sig { returns(T.nilable(String)) }
        attr_reader :privy_authorization_signature

        sig { params(privy_authorization_signature: String).void }
        attr_writer :privy_authorization_signature

        sig do
          params(
            wallet_id: String,
            action_id: String,
            include: Privy::Wallets::WalletActionInclude::OrSymbol,
            privy_authorization_signature: String,
            request_options: Privy::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the wallet.
          wallet_id:,
          # ID of the wallet action.
          action_id:,
          # Expandable relations to include on a wallet action response.
          include: nil,
          # Request authorization signature. If multiple signatures are required, they
          # should be comma separated.
          privy_authorization_signature: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              wallet_id: String,
              action_id: String,
              include: Privy::Wallets::WalletActionInclude::OrSymbol,
              privy_authorization_signature: String,
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
