# typed: strong

module Privy
  module Models
    class CardIssuingCustomerNotCreatedResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CardIssuingCustomerNotCreatedResponse,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::CardIssuingCustomerNotCreatedResponse::Status::OrSymbol)
      end
      attr_accessor :status

      # No cards customer has been created for this Privy user.
      sig do
        params(
          status: Privy::CardIssuingCustomerNotCreatedResponse::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(status:)
      end

      sig do
        override.returns(
          {
            status:
              Privy::CardIssuingCustomerNotCreatedResponse::Status::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::CardIssuingCustomerNotCreatedResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NOT_CREATED =
          T.let(
            :not_created,
            Privy::CardIssuingCustomerNotCreatedResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::CardIssuingCustomerNotCreatedResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
