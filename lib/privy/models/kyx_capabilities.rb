# frozen_string_literal: true

module Privy
  module Models
    class KyxCapabilities < Privy::Internal::Type::BaseModel
      # @!attribute payin_crypto
      #   Status of a capability. Passthrough from the provider.
      #
      #   @return [String]
      required :payin_crypto, String

      # @!attribute payin_fiat
      #   Status of a capability. Passthrough from the provider.
      #
      #   @return [String]
      required :payin_fiat, String

      # @!attribute payout_crypto
      #   Status of a capability. Passthrough from the provider.
      #
      #   @return [String]
      required :payout_crypto, String

      # @!attribute payout_fiat
      #   Status of a capability. Passthrough from the provider.
      #
      #   @return [String]
      required :payout_fiat, String

      # @!method initialize(payin_crypto:, payin_fiat:, payout_crypto:, payout_fiat:)
      #   Capability statuses for the customer.
      #
      #   @param payin_crypto [String] Status of a capability. Passthrough from the provider.
      #
      #   @param payin_fiat [String] Status of a capability. Passthrough from the provider.
      #
      #   @param payout_crypto [String] Status of a capability. Passthrough from the provider.
      #
      #   @param payout_fiat [String] Status of a capability. Passthrough from the provider.
    end
  end
end
