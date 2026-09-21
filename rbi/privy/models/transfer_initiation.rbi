# typed: strong

module Privy
  module Models
    class TransferInitiation < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransferInitiation, Privy::Internal::AnyHash)
        end

      # Payment initiation attestations for a transfer.
      sig { returns(Privy::TransferInitiationAttestations) }
      attr_reader :attestations

      sig do
        params(attestations: Privy::TransferInitiationAttestations::OrHash).void
      end
      attr_writer :attestations

      # How the payment was initiated. Use `p2p_mobile_payment` for peer-to-peer
      # transfers initiated on a mobile device; `other_mobile_payment` for non-P2P
      # mobile-initiated payments (e.g. a merchant payment via a mobile app); `other`
      # for payments not relying on a mobile device.
      sig { returns(T.any(Privy::TransferInitiationChannel::OrSymbol, String)) }
      attr_accessor :channel

      # Whether the payment was made remotely or in person. Use `remote` for payments
      # initiated from a distance (mobile app, online banking, or e-commerce checkout);
      # `non_remote` for payments made in person (physical card, payment terminal, or
      # contactless tap).
      sig do
        returns(T.any(Privy::TransferInitiationSubchannel::OrSymbol, String))
      end
      attr_accessor :subchannel

      # Payment initiation context for transfers sourced from wallets that require
      # initiation data. Captures how the payment was initiated (channel and subchannel)
      # and whether Strong Customer Authentication was applied or which SCA exemption
      # was used.
      sig do
        params(
          attestations: Privy::TransferInitiationAttestations::OrHash,
          channel: T.any(Privy::TransferInitiationChannel::OrSymbol, String),
          subchannel:
            T.any(Privy::TransferInitiationSubchannel::OrSymbol, String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Payment initiation attestations for a transfer.
        attestations:,
        # How the payment was initiated. Use `p2p_mobile_payment` for peer-to-peer
        # transfers initiated on a mobile device; `other_mobile_payment` for non-P2P
        # mobile-initiated payments (e.g. a merchant payment via a mobile app); `other`
        # for payments not relying on a mobile device.
        channel:,
        # Whether the payment was made remotely or in person. Use `remote` for payments
        # initiated from a distance (mobile app, online banking, or e-commerce checkout);
        # `non_remote` for payments made in person (physical card, payment terminal, or
        # contactless tap).
        subchannel:
      )
      end

      sig do
        override.returns(
          {
            attestations: Privy::TransferInitiationAttestations,
            channel: T.any(Privy::TransferInitiationChannel::OrSymbol, String),
            subchannel:
              T.any(Privy::TransferInitiationSubchannel::OrSymbol, String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
