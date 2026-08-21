# typed: strong

module Privy
  module Models
    class CardIssuingCustomerBridgeTermsRequiredResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CardIssuingCustomerBridgeTermsRequiredResponse,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::CardIssuingCustomerBridgeTermsRequiredResponse::Status::OrSymbol
        )
      end
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :tos_url

      # A cards customer exists and must accept the provider terms hosted at `tos_url`
      # before KYC. Reached only once the bank agreements are recorded.
      sig do
        params(
          status:
            Privy::CardIssuingCustomerBridgeTermsRequiredResponse::Status::OrSymbol,
          tos_url: String
        ).returns(T.attached_class)
      end
      def self.new(status:, tos_url:)
      end

      sig do
        override.returns(
          {
            status:
              Privy::CardIssuingCustomerBridgeTermsRequiredResponse::Status::OrSymbol,
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
              Privy::CardIssuingCustomerBridgeTermsRequiredResponse::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BRIDGE_TERMS_REQUIRED =
          T.let(
            :bridge_terms_required,
            Privy::CardIssuingCustomerBridgeTermsRequiredResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::CardIssuingCustomerBridgeTermsRequiredResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
