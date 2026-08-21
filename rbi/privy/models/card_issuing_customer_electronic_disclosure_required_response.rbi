# typed: strong

module Privy
  module Models
    class CardIssuingCustomerElectronicDisclosureRequiredResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CardIssuingCustomerElectronicDisclosureRequiredResponse,
            Privy::Internal::AnyHash
          )
        end

      # The disclosure the user must accept, rendered by the client.
      sig { returns(String) }
      attr_accessor :disclosure_url

      sig do
        returns(
          Privy::CardIssuingCustomerElectronicDisclosureRequiredResponse::Status::OrSymbol
        )
      end
      attr_accessor :status

      # A cards customer exists and the user must accept the electronic disclosure
      # (E-Sign consent) before any other agreement can be accepted electronically.
      sig do
        params(
          disclosure_url: String,
          status:
            Privy::CardIssuingCustomerElectronicDisclosureRequiredResponse::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The disclosure the user must accept, rendered by the client.
        disclosure_url:,
        status:
      )
      end

      sig do
        override.returns(
          {
            disclosure_url: String,
            status:
              Privy::CardIssuingCustomerElectronicDisclosureRequiredResponse::Status::OrSymbol
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
              Privy::CardIssuingCustomerElectronicDisclosureRequiredResponse::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ELECTRONIC_DISCLOSURE_REQUIRED =
          T.let(
            :electronic_disclosure_required,
            Privy::CardIssuingCustomerElectronicDisclosureRequiredResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::CardIssuingCustomerElectronicDisclosureRequiredResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
