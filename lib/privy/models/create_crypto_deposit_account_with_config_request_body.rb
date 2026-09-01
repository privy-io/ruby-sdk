# frozen_string_literal: true

module Privy
  module Models
    class CreateCryptoDepositAccountWithConfigRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute deposit_config_id
      #
      #   @return [String]
      required :deposit_config_id, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::CreateCryptoDepositAccountWithConfigRequestBody::Type]
      required :type, enum: -> { Privy::CreateCryptoDepositAccountWithConfigRequestBody::Type }

      # @!method initialize(deposit_config_id:, type:)
      #   Creates a crypto deposit account from an existing deposit configuration.
      #
      #   @param deposit_config_id [String]
      #   @param type [Symbol, Privy::Models::CreateCryptoDepositAccountWithConfigRequestBody::Type]

      # @see Privy::Models::CreateCryptoDepositAccountWithConfigRequestBody#type
      module Type
        extend Privy::Internal::Type::Enum

        DEPOSIT_CONFIG = :deposit_config

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
