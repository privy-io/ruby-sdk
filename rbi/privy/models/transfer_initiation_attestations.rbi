# typed: strong

module Privy
  module Models
    class TransferInitiationAttestations < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransferInitiationAttestations, Privy::Internal::AnyHash)
        end

      # Strong Customer Authentication attestation for a transfer.
      sig { returns(Privy::TransferScaAttestation) }
      attr_reader :sca

      sig { params(sca: Privy::TransferScaAttestation::OrHash).void }
      attr_writer :sca

      # Payment initiation attestations for a transfer.
      sig do
        params(sca: Privy::TransferScaAttestation::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(
        # Strong Customer Authentication attestation for a transfer.
        sca:
      )
      end

      sig { override.returns({ sca: Privy::TransferScaAttestation }) }
      def to_hash
      end
    end
  end
end
