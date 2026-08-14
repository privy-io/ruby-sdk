# typed: strong

module Privy
  module Models
    class CardIssuingCustomerErrorResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CardIssuingCustomerErrorResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(Privy::CardIssuingCustomerErrorResponse::Status::OrSymbol) }
      attr_accessor :status

      # The cards customer cannot continue onboarding or issue cards.
      sig do
        params(
          status: Privy::CardIssuingCustomerErrorResponse::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(status:)
      end

      sig do
        override.returns(
          { status: Privy::CardIssuingCustomerErrorResponse::Status::OrSymbol }
        )
      end
      def to_hash
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::CardIssuingCustomerErrorResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ERROR =
          T.let(
            :error,
            Privy::CardIssuingCustomerErrorResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::CardIssuingCustomerErrorResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
