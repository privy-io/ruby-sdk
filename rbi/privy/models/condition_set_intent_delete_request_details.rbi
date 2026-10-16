# typed: strong

module Privy
  module Models
    class ConditionSetIntentDeleteRequestDetails < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::ConditionSetIntentDeleteRequestDetails,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::ConditionSetIntentDeleteRequestDetails::Method::TaggedSymbol
        )
      end
      attr_accessor :method_

      sig { returns(String) }
      attr_accessor :url

      # Empty request body for a condition set delete intent.
      sig { returns(T.nilable(Privy::ConditionSetIntentDeleteRequestBody)) }
      attr_reader :body

      sig do
        params(body: Privy::ConditionSetIntentDeleteRequestBody::OrHash).void
      end
      attr_writer :body

      # Request details for deleting a condition set via intent.
      sig do
        params(
          method_:
            Privy::ConditionSetIntentDeleteRequestDetails::Method::OrSymbol,
          url: String,
          body: Privy::ConditionSetIntentDeleteRequestBody::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        url:,
        # Empty request body for a condition set delete intent.
        body: nil
      )
      end

      sig do
        override.returns(
          {
            method_:
              Privy::ConditionSetIntentDeleteRequestDetails::Method::TaggedSymbol,
            url: String,
            body: Privy::ConditionSetIntentDeleteRequestBody
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::ConditionSetIntentDeleteRequestDetails::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DELETE =
          T.let(
            :DELETE,
            Privy::ConditionSetIntentDeleteRequestDetails::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::ConditionSetIntentDeleteRequestDetails::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
