# typed: strong

module Privy
  module Models
    module Wallets
      module Earn
        module Ethereum
          class IncentiveClaimParams < Privy::Models::Wallets::EarnIncentiveClaimRequestBody
            extend Privy::Internal::Type::RequestParameters::Converter
            include Privy::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Privy::Wallets::Earn::Ethereum::IncentiveClaimParams,
                  Privy::Internal::AnyHash
                )
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

            # Idempotency keys ensure API requests are executed only once within a 24-hour
            # window.
            sig { returns(T.nilable(String)) }
            attr_reader :privy_idempotency_key

            sig { params(privy_idempotency_key: String).void }
            attr_writer :privy_idempotency_key

            # Request expiry. Value is a Unix timestamp in milliseconds representing the
            # deadline by which the request must be processed.
            sig { returns(T.nilable(String)) }
            attr_reader :privy_request_expiry

            sig { params(privy_request_expiry: String).void }
            attr_writer :privy_request_expiry

            sig do
              params(
                wallet_id: String,
                privy_authorization_signature: String,
                privy_idempotency_key: String,
                privy_request_expiry: String,
                request_options: Privy::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # ID of the wallet.
              wallet_id:,
              # Request authorization signature. If multiple signatures are required, they
              # should be comma separated.
              privy_authorization_signature: nil,
              # Idempotency keys ensure API requests are executed only once within a 24-hour
              # window.
              privy_idempotency_key: nil,
              # Request expiry. Value is a Unix timestamp in milliseconds representing the
              # deadline by which the request must be processed.
              privy_request_expiry: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  wallet_id: String,
                  privy_authorization_signature: String,
                  privy_idempotency_key: String,
                  privy_request_expiry: String,
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
