# typed: strong

module Privy
  module Models
    class CardIssuingCustomerUnderReviewResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CardIssuingCustomerUnderReviewResponse,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::CardIssuingCustomerUnderReviewResponse::Status::OrSymbol)
      end
      attr_accessor :status

      # A cards customer undergoing provider review before onboarding can continue.
      sig do
        params(
          status:
            Privy::CardIssuingCustomerUnderReviewResponse::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(status:)
      end

      sig do
        override.returns(
          {
            status:
              Privy::CardIssuingCustomerUnderReviewResponse::Status::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::CardIssuingCustomerUnderReviewResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UNDER_REVIEW =
          T.let(
            :under_review,
            Privy::CardIssuingCustomerUnderReviewResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::CardIssuingCustomerUnderReviewResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
