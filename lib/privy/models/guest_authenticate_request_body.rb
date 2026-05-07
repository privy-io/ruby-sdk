# frozen_string_literal: true

module Privy
  module Models
    class GuestAuthenticateRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute guest_credential
      #
      #   @return [String]
      required :guest_credential, String

      # @!method initialize(guest_credential:)
      #   The request body for authenticating a guest.
      #
      #   @param guest_credential [String]
    end
  end
end
