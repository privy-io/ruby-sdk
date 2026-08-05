# typed: strong

module Privy
  module Models
    class CardIssuingCustomerTermsRequiredResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CardIssuingCustomerTermsRequiredResponse,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::CardIssuingCustomerTermsRequiredResponse::Status::OrSymbol
        )
      end
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :tos_url

      # A Bridge cards customer exists and must accept terms before KYC.
      sig do
        params(
          status:
            Privy::CardIssuingCustomerTermsRequiredResponse::Status::OrSymbol,
          tos_url: String
        ).returns(T.attached_class)
      end
      def self.new(status:, tos_url:)
      end

      sig do
        override.returns(
          {
            status:
              Privy::CardIssuingCustomerTermsRequiredResponse::Status::OrSymbol,
            tos_url: String
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
              Privy::CardIssuingCustomerTermsRequiredResponse::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TERMS_REQUIRED =
          T.let(
            :terms_required,
            Privy::CardIssuingCustomerTermsRequiredResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::CardIssuingCustomerTermsRequiredResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
