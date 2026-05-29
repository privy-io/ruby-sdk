# typed: strong

module Privy
  module Models
    module Wallets
      class SwapQuoteParams < Privy::Models::SwapQuoteRequestBody
        extend Privy::Internal::Type::RequestParameters::Converter
        include Privy::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Privy::Wallets::SwapQuoteParams, Privy::Internal::AnyHash)
          end

        # ID of the wallet.
        sig { returns(String) }
        attr_accessor :wallet_id

        # Request authorization signature. If multiple signatures are required, they
        # should be comma separated.
        sig { returns(T.nilable(String)) }
        attr_reader :privy_authorization_signature

        sig { params(privy_authorization_signature: String).void }
        attr_writer :privy_authorization_signature

        sig do
          params(
            wallet_id: String,
            privy_authorization_signature: String,
            request_options: Privy::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the wallet.
          wallet_id:,
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
