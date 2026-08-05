# typed: strong

module Privy
  module Models
    class CardIssuingCustomerPendingResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CardIssuingCustomerPendingResponse,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::CardIssuingCustomerPendingResponse::Status::OrSymbol)
      end
      attr_accessor :status

      # A cards customer waiting for card issuing to become available.
      sig do
        params(
          status: Privy::CardIssuingCustomerPendingResponse::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(status:)
      end

      sig do
        override.returns(
          {
            status: Privy::CardIssuingCustomerPendingResponse::Status::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::CardIssuingCustomerPendingResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Privy::CardIssuingCustomerPendingResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::CardIssuingCustomerPendingResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
