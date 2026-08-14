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

      # Bridge rejected the cards customer during verification.
      sig do
        params(
          status: Privy::CardIssuingCustomerRejectedResponse::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(status:)
      end

      sig do
        override.returns(
          {
            status: Privy::CardIssuingCustomerRejectedResponse::Status::OrSymbol
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
