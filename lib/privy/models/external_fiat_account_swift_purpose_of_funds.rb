# frozen_string_literal: true

module Privy
  module Models
    # Reason funds are sent to a SWIFT account, required for cross-border compliance.
    module ExternalFiatAccountSwiftPurposeOfFunds
      extend Privy::Internal::Type::Enum

      INTRA_GROUP_TRANSFER = :intra_group_transfer
      INVOICE_FOR_GOODS_AND_SERVICES = :invoice_for_goods_and_services

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
