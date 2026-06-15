# frozen_string_literal: true

module Privy
  module Models
    class TronTriggerSmartContract < Privy::Internal::Type::BaseModel
      # @!attribute contract_address
      #   Tron address in hex format: 41-prefixed, 42 hex characters (21 bytes), no 0x
      #   prefix.
      #
      #   @return [String]
      required :contract_address, String

      # @!attribute owner_address
      #   Tron address in hex format: 41-prefixed, 42 hex characters (21 bytes), no 0x
      #   prefix.
      #
      #   @return [String]
      required :owner_address, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::TronTriggerSmartContract::Type]
      required :type, enum: -> { Privy::TronTriggerSmartContract::Type }

      # @!attribute call_token_value
      #
      #   @return [Integer, nil]
      optional :call_token_value, Integer

      # @!attribute token_id
      #
      #   @return [Integer, nil]
      optional :token_id, Integer

      # @!method initialize(contract_address:, owner_address:, type:, call_token_value: nil, token_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TronTriggerSmartContract} for more details.
      #
      #   Tron smart contract call (TRC-20 transfers and general contract interactions).
      #
      #   @param contract_address [String] Tron address in hex format: 41-prefixed, 42 hex characters (21 bytes), no 0x pre
      #
      #   @param owner_address [String] Tron address in hex format: 41-prefixed, 42 hex characters (21 bytes), no 0x pre
      #
      #   @param type [Symbol, Privy::Models::TronTriggerSmartContract::Type]
      #
      #   @param call_token_value [Integer]
      #
      #   @param token_id [Integer]

      # @see Privy::Models::TronTriggerSmartContract#type
      module Type
        extend Privy::Internal::Type::Enum

        TRIGGER_SMART_CONTRACT = :TriggerSmartContract

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
