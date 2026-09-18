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

      # @!attribute deposit_address_strategy
      #   How deposit source wallets are chosen. Omission uses `dedicated`. Destination
      #   reuse applies only to the destination's own chain type.
      #
      #   @return [Symbol, Privy::Models::CryptoDepositAddressStrategy, nil]
      optional :deposit_address_strategy, enum: -> { Privy::CryptoDepositAddressStrategy }

      # @!method initialize(deposit_config_id:, type:, deposit_address_strategy: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CreateCryptoDepositAccountWithConfigRequestBody} for more
      #   details.
      #
      #   Creates a crypto deposit account from an existing deposit configuration.
      #
      #   @param deposit_config_id [String]
      #
      #   @param type [Symbol, Privy::Models::CreateCryptoDepositAccountWithConfigRequestBody::Type]
      #
      #   @param deposit_address_strategy [Symbol, Privy::Models::CryptoDepositAddressStrategy] How deposit source wallets are chosen. Omission uses `dedicated`. Destination re

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
