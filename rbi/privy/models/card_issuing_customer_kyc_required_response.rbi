# typed: strong

module Privy
  module Models
    class CardIssuingCustomerKYCRequiredResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CardIssuingCustomerKYCRequiredResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :kyc_url

      sig do
        returns(Privy::CardIssuingCustomerKYCRequiredResponse::Status::OrSymbol)
      end
      attr_accessor :status

      # A Bridge cards customer exists and must complete KYC before card creation.
      sig do
        params(
          kyc_url: String,
          status:
            Privy::CardIssuingCustomerKYCRequiredResponse::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(kyc_url:, status:)
      end

      sig do
        override.returns(
          {
            kyc_url: String,
            status:
              Privy::CardIssuingCustomerKYCRequiredResponse::Status::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::CardIssuingCustomerKYCRequiredResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        KYC_REQUIRED =
          T.let(
            :kyc_required,
            Privy::CardIssuingCustomerKYCRequiredResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::CardIssuingCustomerKYCRequiredResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
