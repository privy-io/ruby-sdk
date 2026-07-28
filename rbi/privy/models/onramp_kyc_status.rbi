# typed: strong

module Privy
  module Models
    # Status of the KYC verification process.
    module OnrampKYCStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::OnrampKYCStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      NOT_FOUND = T.let(:not_found, Privy::OnrampKYCStatus::TaggedSymbol)
      ACTIVE = T.let(:active, Privy::OnrampKYCStatus::TaggedSymbol)
      AWAITING_QUESTIONNAIRE =
        T.let(:awaiting_questionnaire, Privy::OnrampKYCStatus::TaggedSymbol)
      AWAITING_UBO = T.let(:awaiting_ubo, Privy::OnrampKYCStatus::TaggedSymbol)
      INCOMPLETE = T.let(:incomplete, Privy::OnrampKYCStatus::TaggedSymbol)
      NOT_STARTED = T.let(:not_started, Privy::OnrampKYCStatus::TaggedSymbol)
      OFFBOARDED = T.let(:offboarded, Privy::OnrampKYCStatus::TaggedSymbol)
      PAUSED = T.let(:paused, Privy::OnrampKYCStatus::TaggedSymbol)
      REJECTED = T.let(:rejected, Privy::OnrampKYCStatus::TaggedSymbol)
      UNDER_REVIEW = T.let(:under_review, Privy::OnrampKYCStatus::TaggedSymbol)

      sig { override.returns(T::Array[Privy::OnrampKYCStatus::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
