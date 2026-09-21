# frozen_string_literal: true

module Privy
  module Models
    class TransferScaAttestation < Privy::Internal::Type::BaseModel
      # @!attribute outcome
      #   Whether Strong Customer Authentication (SCA) was applied or which regulatory
      #   exemption or non-applicability reason covers this payment. Use `sca_used` when
      #   the user authenticated with SCA. Otherwise, choose the value that applies:
      #   `payment_to_self` — payer and payee are the same person (remote only);
      #   `trusted_beneficiaries` — payee is on the user's pre-approved list;
      #   `recurring_transaction` — amount and payee match a previously SCA-authorized
      #   recurring series; `contactless_low_value` — contactless card payment below the
      #   low-value threshold (non-remote only); `unattended_terminal_for_transport` —
      #   automated terminal for transport fares or parking (non-remote only); `low_value`
      #   — remote payment below the low-value threshold (remote only);
      #   `secure_corporate_payment` — dedicated corporate payment process with controls
      #   equivalent to SCA (remote only); `transaction_risk_analysis` — PSP has performed
      #   real-time risk analysis and the transaction falls within permitted thresholds
      #   (remote only); `merchant_initiated_transaction` — payment triggered by the
      #   merchant without the payer present, on a pre-authorized mandate (remote only);
      #   `not_applicable` — this flow requires initiation context but SCA and SCA
      #   exemptions do not apply; `other` — another recognized exemption not listed
      #   above.
      #
      #   @return [Symbol, String, Privy::Models::TransferScaOutcome]
      required :outcome, union: -> { Privy::TransferScaOutcome }

      # @!attribute auth_factors
      #   Authentication factor metadata. Optional when `outcome` is `sca_used`; if
      #   provided, it must contain at least two entries from different `category` values
      #   (e.g. one `possession` factor and one `knowledge` factor). Omit this field for
      #   any other outcome.
      #
      #   @return [Array<Privy::Models::TransferScaAuthFactor>, nil]
      optional :auth_factors, -> { Privy::Internal::Type::ArrayOf[Privy::TransferScaAuthFactor] }

      # @!method initialize(outcome:, auth_factors: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TransferScaAttestation} for more details.
      #
      #   Strong Customer Authentication attestation for a transfer.
      #
      #   @param outcome [Symbol, String, Privy::Models::TransferScaOutcome] Whether Strong Customer Authentication (SCA) was applied or which regulatory exe
      #
      #   @param auth_factors [Array<Privy::Models::TransferScaAuthFactor>] Authentication factor metadata. Optional when `outcome` is `sca_used`; if provid
    end
  end
end
