# typed: strong

module Privy
  module Models
    class CardIssuingCustomerResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CardIssuingCustomerResponse, Privy::Internal::AnyHash)
        end

      # No cards customer has been created for this Privy user.
      sig do
        returns(
          T.any(
            Privy::CardIssuingCustomerNotCreatedResponse,
            Privy::CardIssuingCustomerElectronicDisclosureRequiredResponse,
            Privy::CardIssuingCustomerBankTermsRequiredResponse,
            Privy::CardIssuingCustomerProviderTermsRequiredResponse,
            Privy::CardIssuingCustomerKYCRequiredResponse,
            Privy::CardIssuingCustomerPendingResponse,
            Privy::CardIssuingCustomerUnderReviewResponse,
            Privy::CardIssuingCustomerRejectedResponse,
            Privy::CardIssuingCustomerErrorResponse,
            Privy::CardIssuingCustomerReadyResponse
          )
        )
      end
      attr_accessor :data

      # Cards customer state for a Privy user.
      sig do
        params(
          data:
            T.any(
              Privy::CardIssuingCustomerNotCreatedResponse::OrHash,
              Privy::CardIssuingCustomerElectronicDisclosureRequiredResponse::OrHash,
              Privy::CardIssuingCustomerBankTermsRequiredResponse::OrHash,
              Privy::CardIssuingCustomerProviderTermsRequiredResponse::OrHash,
              Privy::CardIssuingCustomerKYCRequiredResponse::OrHash,
              Privy::CardIssuingCustomerPendingResponse::OrHash,
              Privy::CardIssuingCustomerUnderReviewResponse::OrHash,
              Privy::CardIssuingCustomerRejectedResponse::OrHash,
              Privy::CardIssuingCustomerErrorResponse::OrHash,
              Privy::CardIssuingCustomerReadyResponse::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # No cards customer has been created for this Privy user.
        data:
      )
      end

      sig do
        override.returns(
          {
            data:
              T.any(
                Privy::CardIssuingCustomerNotCreatedResponse,
                Privy::CardIssuingCustomerElectronicDisclosureRequiredResponse,
                Privy::CardIssuingCustomerBankTermsRequiredResponse,
                Privy::CardIssuingCustomerProviderTermsRequiredResponse,
                Privy::CardIssuingCustomerKYCRequiredResponse,
                Privy::CardIssuingCustomerPendingResponse,
                Privy::CardIssuingCustomerUnderReviewResponse,
                Privy::CardIssuingCustomerRejectedResponse,
                Privy::CardIssuingCustomerErrorResponse,
                Privy::CardIssuingCustomerReadyResponse
              )
          }
        )
      end
      def to_hash
      end

      # No cards customer has been created for this Privy user.
      module Data
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Privy::CardIssuingCustomerNotCreatedResponse,
              Privy::CardIssuingCustomerElectronicDisclosureRequiredResponse,
              Privy::CardIssuingCustomerBankTermsRequiredResponse,
              Privy::CardIssuingCustomerProviderTermsRequiredResponse,
              Privy::CardIssuingCustomerKYCRequiredResponse,
              Privy::CardIssuingCustomerPendingResponse,
              Privy::CardIssuingCustomerUnderReviewResponse,
              Privy::CardIssuingCustomerRejectedResponse,
              Privy::CardIssuingCustomerErrorResponse,
              Privy::CardIssuingCustomerReadyResponse
            )
          end

        sig do
          override.returns(
            T::Array[Privy::CardIssuingCustomerResponse::Data::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
