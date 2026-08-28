# typed: strong

module Privy
  module Models
    class CardIssuingCustomerReadyResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CardIssuingCustomerReadyResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(Privy::CardIssuingCustomerReadyResponse::Status::OrSymbol) }
      attr_accessor :status

      # A cards customer that has completed onboarding and can issue cards.
      sig do
        params(
          status: Privy::CardIssuingCustomerReadyResponse::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(status:)
      end

      sig do
        override.returns(
          { status: Privy::CardIssuingCustomerReadyResponse::Status::OrSymbol }
        )
      end
      def to_hash
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::CardIssuingCustomerReadyResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        READY =
          T.let(
            :ready,
            Privy::CardIssuingCustomerReadyResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::CardIssuingCustomerReadyResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
