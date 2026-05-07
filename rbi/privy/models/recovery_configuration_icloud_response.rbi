# typed: strong

module Privy
  module Models
    class RecoveryConfigurationICloudResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::RecoveryConfigurationICloudResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :api_token

      sig { returns(String) }
      attr_accessor :container_identifier

      sig { returns(String) }
      attr_accessor :environment

      # The response containing the iCloud recovery configuration.
      sig do
        params(
          api_token: String,
          container_identifier: String,
          environment: String
        ).returns(T.attached_class)
      end
      def self.new(api_token:, container_identifier:, environment:)
      end

      sig do
        override.returns(
          {
            api_token: String,
            container_identifier: String,
            environment: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
