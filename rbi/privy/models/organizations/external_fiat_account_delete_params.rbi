# typed: strong

module Privy
  module Models
    module Organizations
      class ExternalFiatAccountDeleteParams < Privy::Internal::Type::BaseModel
        extend Privy::Internal::Type::RequestParameters::Converter
        include Privy::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Privy::Organizations::ExternalFiatAccountDeleteParams,
              Privy::Internal::AnyHash
            )
          end

        # The ID of the organization.
        sig { returns(String) }
        attr_accessor :organization_id

        # The ID of the external fiat account.
        sig { returns(String) }
        attr_accessor :account_id

        sig do
          params(
            organization_id: String,
            account_id: String,
            request_options: Privy::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the organization.
          organization_id:,
          # The ID of the external fiat account.
          account_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              organization_id: String,
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
