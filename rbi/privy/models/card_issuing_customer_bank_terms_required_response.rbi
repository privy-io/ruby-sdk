# typed: strong

module Privy
  module Models
    class CardIssuingCustomerBankTermsRequiredResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CardIssuingCustomerBankTermsRequiredResponse,
            Privy::Internal::AnyHash
          )
        end

      # The bank issuing the card and the agreements the user must accept for it. Served
      # from the backend so the agreements can change without an SDK release, and so
      # swapping banks does not require a client change.
      sig { returns(Privy::CardIssuingBankInfo) }
      attr_reader :bank_info

      sig { params(bank_info: Privy::CardIssuingBankInfo::OrHash).void }
      attr_writer :bank_info

      sig do
        returns(
          Privy::CardIssuingCustomerBankTermsRequiredResponse::Status::OrSymbol
        )
      end
      attr_accessor :status

      # A cards customer exists and must accept the bank agreements. Privy records these
      # rather than the provider, so this step is reached even when the provider already
      # has its own terms — for example a customer onboarded through another product.
      sig do
        params(
          bank_info: Privy::CardIssuingBankInfo::OrHash,
          status:
            Privy::CardIssuingCustomerBankTermsRequiredResponse::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The bank issuing the card and the agreements the user must accept for it. Served
        # from the backend so the agreements can change without an SDK release, and so
        # swapping banks does not require a client change.
        bank_info:,
        status:
      )
      end

      sig do
        override.returns(
          {
            bank_info: Privy::CardIssuingBankInfo,
            status:
              Privy::CardIssuingCustomerBankTermsRequiredResponse::Status::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::CardIssuingCustomerBankTermsRequiredResponse::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BANK_TERMS_REQUIRED =
          T.let(
            :bank_terms_required,
            Privy::CardIssuingCustomerBankTermsRequiredResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::CardIssuingCustomerBankTermsRequiredResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
