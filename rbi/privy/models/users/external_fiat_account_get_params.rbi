# typed: strong

module Privy
  module Models
    module Users
      class ExternalFiatAccountGetParams < Privy::Internal::Type::BaseModel
        extend Privy::Internal::Type::RequestParameters::Converter
        include Privy::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Privy::Users::ExternalFiatAccountGetParams,
              Privy::Internal::AnyHash
            )
          end

        # The DID of the user.
        sig { returns(String) }
        attr_accessor :user_id

        # The ID of the external fiat account.
        sig { returns(String) }
        attr_accessor :account_id

        sig do
          params(
            user_id: String,
            account_id: String,
            request_options: Privy::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The DID of the user.
          user_id:,
          # The ID of the external fiat account.
          account_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              user_id: String,
              account_id: String,
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
