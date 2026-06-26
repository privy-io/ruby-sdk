# frozen_string_literal: true

module Privy
  module Models
    # Supported fields for Ethereum typed data domain conditions.
    module EthereumTypedDataDomainConditionField
      extend Privy::Internal::Type::Enum

      CHAIN_ID = :chainId
      CHAIN_ID_2 = :chain_id
      VERIFYING_CONTRACT = :verifyingContract
      VERIFYING_CONTRACT_2 = :verifying_contract

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
