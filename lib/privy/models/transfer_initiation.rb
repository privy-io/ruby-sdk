# frozen_string_literal: true

module Privy
  module Models
    class TransferInitiation < Privy::Internal::Type::BaseModel
      # @!attribute attestations
      #   Payment initiation attestations for a transfer.
      #
      #   @return [Privy::Models::TransferInitiationAttestations]
      required :attestations, -> { Privy::TransferInitiationAttestations }

      # @!attribute channel
      #   How the payment was initiated. Use `p2p_mobile_payment` for peer-to-peer
      #   transfers initiated on a mobile device; `other_mobile_payment` for non-P2P
      #   mobile-initiated payments (e.g. a merchant payment via a mobile app); `other`
      #   for payments not relying on a mobile device.
      #
      #   @return [Symbol, String, Privy::Models::TransferInitiationChannel]
      required :channel, union: -> { Privy::TransferInitiationChannel }

      # @!attribute subchannel
      #   Whether the payment was made remotely or in person. Use `remote` for payments
      #   initiated from a distance (mobile app, online banking, or e-commerce checkout);
      #   `non_remote` for payments made in person (physical card, payment terminal, or
      #   contactless tap).
      #
      #   @return [Symbol, String, Privy::Models::TransferInitiationSubchannel]
      required :subchannel, union: -> { Privy::TransferInitiationSubchannel }

      # @!method initialize(attestations:, channel:, subchannel:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TransferInitiation} for more details.
      #
      #   Payment initiation context for transfers sourced from wallets that require
      #   initiation data. Captures how the payment was initiated (channel and subchannel)
      #   and whether Strong Customer Authentication was applied or which SCA exemption
      #   was used.
      #
      #   @param attestations [Privy::Models::TransferInitiationAttestations] Payment initiation attestations for a transfer.
      #
      #   @param channel [Symbol, String, Privy::Models::TransferInitiationChannel] How the payment was initiated. Use `p2p_mobile_payment` for peer-to-peer transfe
      #
      #   @param subchannel [Symbol, String, Privy::Models::TransferInitiationSubchannel] Whether the payment was made remotely or in person. Use `remote` for payments in
    end
  end
end
