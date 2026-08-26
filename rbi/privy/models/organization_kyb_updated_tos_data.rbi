# typed: strong

module Privy
  module Models
    class OrganizationKYBUpdatedTosData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OrganizationKYBUpdatedTosData, Privy::Internal::AnyHash)
        end

      # Status of Terms of Service acceptance. Passthrough from the provider.
      sig { returns(String) }
      attr_accessor :status

      # Terms of service status in a KYB update event.
      sig { params(status: String).returns(T.attached_class) }
      def self.new(
        # Status of Terms of Service acceptance. Passthrough from the provider.
        status:
      )
      end

      sig { override.returns({ status: String }) }
      def to_hash
      end
    end
  end
end
