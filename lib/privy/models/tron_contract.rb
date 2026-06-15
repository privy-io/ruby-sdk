# frozen_string_literal: true

module Privy
  module Models
    # A Tron contract, discriminated by type. Supported types: TransferContract,
    # TriggerSmartContract.
    module TronContract
      extend Privy::Internal::Type::Union

      discriminator :type

      # Tron native TRX transfer contract.
      variant :TransferContract, -> { Privy::TronTransferContract }

      # Tron smart contract call (TRC-20 transfers and general contract interactions).
      variant :TriggerSmartContract, -> { Privy::TronTriggerSmartContract }

      # @!method self.variants
      #   @return [Array(Privy::Models::TronTransferContract, Privy::Models::TronTriggerSmartContract)]
    end
  end
end
