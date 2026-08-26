# frozen_string_literal: true

module Privy
  module Models
    class CreateCryptoDepositAccountWithConfigRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute deposit_config_id
      #
      #   @return [String]
      required :deposit_config_id, String

      # @!method initialize(deposit_config_id:)
      #   Creates a crypto deposit account from an existing deposit configuration.
      #
      #   @param deposit_config_id [String]
    end
  end
end
