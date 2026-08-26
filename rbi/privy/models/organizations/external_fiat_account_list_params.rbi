# typed: strong

module Privy
  module Models
    module Organizations
      class ExternalFiatAccountListParams < Privy::Internal::Type::BaseModel
        extend Privy::Internal::Type::RequestParameters::Converter
        include Privy::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Privy::Organizations::ExternalFiatAccountListParams,
              Privy::Internal::AnyHash
            )
          end

        # The ID of the organization to list external fiat accounts for.
        sig { returns(String) }
        attr_accessor :organization_id

        # Supported fiat orchestration providers.
        sig { returns(Privy::OrchestrationProvider::OrSymbol) }
        attr_accessor :provider

        # The Privy API environment.
        sig { returns(T.nilable(Privy::Environment::OrSymbol)) }
        attr_reader :environment

        sig { params(environment: Privy::Environment::OrSymbol).void }
        attr_writer :environment

        sig do
          params(
            organization_id: String,
            provider: Privy::OrchestrationProvider::OrSymbol,
            environment: Privy::Environment::OrSymbol,
            request_options: Privy::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the organization to list external fiat accounts for.
          organization_id:,
          # Supported fiat orchestration providers.
          provider:,
          # The Privy API environment.
          environment: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              organization_id: String,
              provider: Privy::OrchestrationProvider::OrSymbol,
              environment: Privy::Environment::OrSymbol,
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
