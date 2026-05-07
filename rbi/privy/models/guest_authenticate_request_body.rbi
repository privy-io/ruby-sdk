# typed: strong

module Privy
  module Models
    class GuestAuthenticateRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::GuestAuthenticateRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :guest_credential

      # The request body for authenticating a guest.
      sig { params(guest_credential: String).returns(T.attached_class) }
      def self.new(guest_credential:)
      end

      sig { override.returns({ guest_credential: String }) }
      def to_hash
      end
    end
  end
end
