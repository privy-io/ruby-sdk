# typed: strong

module Privy
  module Models
    # Tempo (type 118) transaction-level fields that can be referenced in a policy
    # condition.
    module TempoTransactionConditionField
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::TempoTransactionConditionField) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      FEE_TOKEN =
        T.let(:fee_token, Privy::TempoTransactionConditionField::TaggedSymbol)
      FEE_PAYER_SIGNATURE =
        T.let(
          :fee_payer_signature,
          Privy::TempoTransactionConditionField::TaggedSymbol
        )
      NONCE_KEY =
        T.let(:nonce_key, Privy::TempoTransactionConditionField::TaggedSymbol)
      VALID_BEFORE =
        T.let(
          :valid_before,
          Privy::TempoTransactionConditionField::TaggedSymbol
        )
      VALID_AFTER =
        T.let(:valid_after, Privy::TempoTransactionConditionField::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::TempoTransactionConditionField::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
