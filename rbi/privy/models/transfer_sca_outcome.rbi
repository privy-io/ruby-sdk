# typed: strong

module Privy
  module Models
    # Whether Strong Customer Authentication (SCA) was applied or which regulatory
    # exemption or non-applicability reason covers this payment. Use `sca_used` when
    # the user authenticated with SCA. Otherwise, choose the value that applies:
    # `payment_to_self` — payer and payee are the same person (remote only);
    # `trusted_beneficiaries` — payee is on the user's pre-approved list;
    # `recurring_transaction` — amount and payee match a previously SCA-authorized
    # recurring series; `contactless_low_value` — contactless card payment below the
    # low-value threshold (non-remote only); `unattended_terminal_for_transport` —
    # automated terminal for transport fares or parking (non-remote only); `low_value`
    # — remote payment below the low-value threshold (remote only);
    # `secure_corporate_payment` — dedicated corporate payment process with controls
    # equivalent to SCA (remote only); `transaction_risk_analysis` — PSP has performed
    # real-time risk analysis and the transaction falls within permitted thresholds
    # (remote only); `merchant_initiated_transaction` — payment triggered by the
    # merchant without the payer present, on a pre-authorized mandate (remote only);
    # `not_applicable` — this flow requires initiation context but SCA and SCA
    # exemptions do not apply; `other` — another recognized exemption not listed
    # above.
    module TransferScaOutcome
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias { T.any(Privy::TransferScaOutcome::TaggedSymbol, String) }

      sig { override.returns(T::Array[Privy::TransferScaOutcome::Variants]) }
      def self.variants
      end

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::TransferScaOutcome) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SCA_USED = T.let(:sca_used, Privy::TransferScaOutcome::TaggedSymbol)
      PAYMENT_TO_SELF =
        T.let(:payment_to_self, Privy::TransferScaOutcome::TaggedSymbol)
      TRUSTED_BENEFICIARIES =
        T.let(:trusted_beneficiaries, Privy::TransferScaOutcome::TaggedSymbol)
      RECURRING_TRANSACTION =
        T.let(:recurring_transaction, Privy::TransferScaOutcome::TaggedSymbol)
      CONTACTLESS_LOW_VALUE =
        T.let(:contactless_low_value, Privy::TransferScaOutcome::TaggedSymbol)
      UNATTENDED_TERMINAL_FOR_TRANSPORT =
        T.let(
          :unattended_terminal_for_transport,
          Privy::TransferScaOutcome::TaggedSymbol
        )
      LOW_VALUE = T.let(:low_value, Privy::TransferScaOutcome::TaggedSymbol)
      SECURE_CORPORATE_PAYMENT =
        T.let(
          :secure_corporate_payment,
          Privy::TransferScaOutcome::TaggedSymbol
        )
      TRANSACTION_RISK_ANALYSIS =
        T.let(
          :transaction_risk_analysis,
          Privy::TransferScaOutcome::TaggedSymbol
        )
      MERCHANT_INITIATED_TRANSACTION =
        T.let(
          :merchant_initiated_transaction,
          Privy::TransferScaOutcome::TaggedSymbol
        )
      NOT_APPLICABLE =
        T.let(:not_applicable, Privy::TransferScaOutcome::TaggedSymbol)
      OTHER = T.let(:other, Privy::TransferScaOutcome::TaggedSymbol)
    end
  end
end
