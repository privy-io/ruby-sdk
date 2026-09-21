# frozen_string_literal: true

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

      variant const: -> { Privy::Models::TransferScaOutcome::SCA_USED }

      variant const: -> { Privy::Models::TransferScaOutcome::PAYMENT_TO_SELF }

      variant const: -> { Privy::Models::TransferScaOutcome::TRUSTED_BENEFICIARIES }

      variant const: -> { Privy::Models::TransferScaOutcome::RECURRING_TRANSACTION }

      variant const: -> { Privy::Models::TransferScaOutcome::CONTACTLESS_LOW_VALUE }

      variant const: -> { Privy::Models::TransferScaOutcome::UNATTENDED_TERMINAL_FOR_TRANSPORT }

      variant const: -> { Privy::Models::TransferScaOutcome::LOW_VALUE }

      variant const: -> { Privy::Models::TransferScaOutcome::SECURE_CORPORATE_PAYMENT }

      variant const: -> { Privy::Models::TransferScaOutcome::TRANSACTION_RISK_ANALYSIS }

      variant const: -> { Privy::Models::TransferScaOutcome::MERCHANT_INITIATED_TRANSACTION }

      variant const: -> { Privy::Models::TransferScaOutcome::NOT_APPLICABLE }

      variant const: -> { Privy::Models::TransferScaOutcome::OTHER }

      variant String

      # @!method self.variants
      #   @return [Array(Symbol, String)]

      define_sorbet_constant!(:Variants) do
        T.type_alias { T.any(Privy::TransferScaOutcome::TaggedSymbol, String) }
      end

      # @!group

      SCA_USED = :sca_used
      PAYMENT_TO_SELF = :payment_to_self
      TRUSTED_BENEFICIARIES = :trusted_beneficiaries
      RECURRING_TRANSACTION = :recurring_transaction
      CONTACTLESS_LOW_VALUE = :contactless_low_value
      UNATTENDED_TERMINAL_FOR_TRANSPORT = :unattended_terminal_for_transport
      LOW_VALUE = :low_value
      SECURE_CORPORATE_PAYMENT = :secure_corporate_payment
      TRANSACTION_RISK_ANALYSIS = :transaction_risk_analysis
      MERCHANT_INITIATED_TRANSACTION = :merchant_initiated_transaction
      NOT_APPLICABLE = :not_applicable
      OTHER = :other

      # @!endgroup
    end
  end
end
