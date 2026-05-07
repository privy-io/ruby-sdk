# typed: strong

module Privy
  module Models
    class OAuthInitICloudRecoveryInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OAuthInitICloudRecoveryInput, Privy::Internal::AnyHash)
        end

      # The client type for iCloud recovery operations.
      sig { returns(Privy::ICloudClientType::OrSymbol) }
      attr_accessor :client_type

      # The input for initiating an iCloud OAuth recovery flow.
      sig do
        params(client_type: Privy::ICloudClientType::OrSymbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # The client type for iCloud recovery operations.
        client_type:
      )
      end

      sig do
        override.returns({ client_type: Privy::ICloudClientType::OrSymbol })
      end
      def to_hash
      end
    end
  end
end
