# typed: strong

module Privy
  module Models
    class ConditionSetItemIntentDeleteRequestDetails < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::ConditionSetItemIntentDeleteRequestDetails,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::ConditionSetItemIntentDeleteRequestDetails::Method::TaggedSymbol
        )
      end
      attr_accessor :method_

      sig { returns(String) }
      attr_accessor :url

      # Empty request body for a condition set item delete intent.
      sig { returns(T.nilable(Privy::ConditionSetItemIntentDeleteRequestBody)) }
      attr_reader :body

      sig do
        params(
          body: Privy::ConditionSetItemIntentDeleteRequestBody::OrHash
        ).void
      end
      attr_writer :body

      # Request details for deleting a condition set item via intent.
      sig do
        params(
          method_:
            Privy::ConditionSetItemIntentDeleteRequestDetails::Method::OrSymbol,
          url: String,
          body: Privy::ConditionSetItemIntentDeleteRequestBody::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        url:,
        # Empty request body for a condition set item delete intent.
        body: nil
      )
      end

      sig do
        override.returns(
          {
            method_:
              Privy::ConditionSetItemIntentDeleteRequestDetails::Method::TaggedSymbol,
            url: String,
            body: Privy::ConditionSetItemIntentDeleteRequestBody
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::ConditionSetItemIntentDeleteRequestDetails::Method
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DELETE =
          T.let(
            :DELETE,
            Privy::ConditionSetItemIntentDeleteRequestDetails::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::ConditionSetItemIntentDeleteRequestDetails::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
