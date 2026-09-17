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
      #   Controls deposit source selection. `dedicated` creates or reuses eligible
      #   dedicated source wallets, never the destination wallet. This is the default when
      #   omitted, including for existing routes. `prefer_destination` uses the
      #   destination wallet when it is eligible and its chain family is requested;
      #   otherwise it uses dedicated source wallets. `require_destination` requires the
      #   destination wallet to serve its own chain family when that family is requested
      #   and fails without fallback if it cannot; other requested families still use
      #   dedicated source wallets. On destination reuse, all strategies remove all
      #   existing automation attachments, including matching and disabled ones, then
      #   attach the requested automation. Exported wallets cannot serve as deposit
      #   sources.
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
      #   @param deposit_address_strategy [Symbol, Privy::Models::CryptoDepositAddressStrategy] Controls deposit source selection. `dedicated` creates or reuses eligible dedica

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
