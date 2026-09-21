# frozen_string_literal: true

module Privy
  module Models
    class TransferInitiationAttestations < Privy::Internal::Type::BaseModel
      # @!attribute sca
      #   Strong Customer Authentication attestation for a transfer.
      #
      #   @return [Privy::Models::TransferScaAttestation]
      required :sca, -> { Privy::TransferScaAttestation }

      # @!method initialize(sca:)
      #   Payment initiation attestations for a transfer.
      #
      #   @param sca [Privy::Models::TransferScaAttestation] Strong Customer Authentication attestation for a transfer.
    end
  end
end
