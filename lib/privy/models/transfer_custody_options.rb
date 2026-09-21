# frozen_string_literal: true

module Privy
  module Models
    class TransferCustodyOptions < Privy::Internal::Type::BaseModel
      # @!attribute initiation
      #   Payment initiation context for transfers sourced from wallets that require
      #   initiation data. Captures how the payment was initiated (channel and subchannel)
      #   and whether Strong Customer Authentication was applied or which SCA exemption
      #   was used.
      #
      #   @return [Privy::Models::TransferInitiation]
      required :initiation, -> { Privy::TransferInitiation }

      # @!method initialize(initiation:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TransferCustodyOptions} for more details.
      #
      #   Options for a transfer from a custodial wallet.
      #
      #   @param initiation [Privy::Models::TransferInitiation] Payment initiation context for transfers sourced from wallets that require initi
    end
  end
end
