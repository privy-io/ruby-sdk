# frozen_string_literal: true

module Privy
  module Models
    class WalletRevokeResponse < Privy::Internal::Type::BaseModel
      # @!attribute message
      #
      #   @return [String]
      required :message, String

      # @!method initialize(message:)
      #   The response body from revoking a wallet delegation.
      #
      #   @param message [String]
    end
  end
end
