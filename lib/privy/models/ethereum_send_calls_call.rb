# frozen_string_literal: true

module Privy
  module Models
    class EthereumSendCallsCall < Privy::Internal::Type::BaseModel
      # @!attribute to
      #
      #   @return [String]
      required :to, String

      # @!attribute data
      #   A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      #   bytes).
      #
      #   @return [String, nil]
      optional :data, String

      # @!attribute value
      #   A quantity value that can be either a hex string starting with '0x' or a
      #   non-negative integer.
      #
      #   @return [String, Integer, nil]
      optional :value, union: -> { Privy::Quantity }

      # @!method initialize(to:, data: nil, value: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumSendCallsCall} for more details.
      #
      #   A single call within a batched wallet_sendCalls request.
      #
      #   @param to [String]
      #
      #   @param data [String] A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000 byt
      #
      #   @param value [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg
    end
  end
end
