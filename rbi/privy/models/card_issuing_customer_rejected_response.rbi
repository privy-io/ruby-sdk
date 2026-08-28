# typed: strong

module Privy
  module Models
    class CardIssuingCustomerRejectedResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CardIssuingCustomerRejectedResponse,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::CardIssuingCustomerRejectedResponse::Status::OrSymbol)
      end
      attr_accessor :status

      sig do
        returns(T.nilable(T::Array[Privy::CardIssuingCustomerRejectionReason]))
      end
      attr_reader :rejection_reasons

      sig do
        params(
          rejection_reasons:
            T::Array[Privy::CardIssuingCustomerRejectionReason::OrHash]
        ).void
      end
      attr_writer :rejection_reasons

      # The cards customer was rejected during verification.
      sig do
        params(
          status: Privy::CardIssuingCustomerRejectedResponse::Status::OrSymbol,
          rejection_reasons:
            T::Array[Privy::CardIssuingCustomerRejectionReason::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(status:, rejection_reasons: nil)
      end

      sig do
        override.returns(
          {
            status:
              Privy::CardIssuingCustomerRejectedResponse::Status::OrSymbol,
            rejection_reasons:
              T::Array[Privy::CardIssuingCustomerRejectionReason]
          }
        )
      end
      def to_hash
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::CardIssuingCustomerRejectedResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REJECTED =
          T.let(
            :rejected,
            Privy::CardIssuingCustomerRejectedResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::CardIssuingCustomerRejectedResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
