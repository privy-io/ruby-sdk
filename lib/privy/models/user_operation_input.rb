# frozen_string_literal: true

module Privy
  module Models
    class UserOperationInput < Privy::Internal::Type::BaseModel
      # @!attribute call_data
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String]
      required :call_data, String

      # @!attribute call_gas_limit
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String]
      required :call_gas_limit, String

      # @!attribute max_fee_per_gas
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String]
      required :max_fee_per_gas, String

      # @!attribute max_priority_fee_per_gas
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String]
      required :max_priority_fee_per_gas, String

      # @!attribute nonce
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String]
      required :nonce, String

      # @!attribute pre_verification_gas
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String]
      required :pre_verification_gas, String

      # @!attribute sender
      #
      #   @return [String]
      required :sender, String

      # @!attribute verification_gas_limit
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String]
      required :verification_gas_limit, String

      # @!attribute paymaster
      #
      #   @return [String, nil]
      optional :paymaster, String

      # @!attribute paymaster_data
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String, nil]
      optional :paymaster_data, String

      # @!attribute paymaster_post_op_gas_limit
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String, nil]
      optional :paymaster_post_op_gas_limit, String

      # @!attribute paymaster_verification_gas_limit
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String, nil]
      optional :paymaster_verification_gas_limit, String

      # @!method initialize(call_data:, call_gas_limit:, max_fee_per_gas:, max_priority_fee_per_gas:, nonce:, pre_verification_gas:, sender:, verification_gas_limit:, paymaster: nil, paymaster_data: nil, paymaster_post_op_gas_limit: nil, paymaster_verification_gas_limit: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::UserOperationInput} for more details.
      #
      #   An ERC-4337 user operation.
      #
      #   @param call_data [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt
      #
      #   @param call_gas_limit [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt
      #
      #   @param max_fee_per_gas [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt
      #
      #   @param max_priority_fee_per_gas [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt
      #
      #   @param nonce [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt
      #
      #   @param pre_verification_gas [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt
      #
      #   @param sender [String]
      #
      #   @param verification_gas_limit [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt
      #
      #   @param paymaster [String]
      #
      #   @param paymaster_data [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt
      #
      #   @param paymaster_post_op_gas_limit [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt
      #
      #   @param paymaster_verification_gas_limit [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt
    end
  end
end
