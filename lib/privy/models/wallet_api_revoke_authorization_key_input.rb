# frozen_string_literal: true

module Privy
  module Models
    class WalletAPIRevokeAuthorizationKeyInput < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:)
      #   Input for revoking an application authorization key.
      #
      #   @param id [String]
    end
  end
end
