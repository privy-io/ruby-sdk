# typed: strong

module Privy
  module Models
    class ConditionSetItemIntentUpdateRequestDetails < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::ConditionSetItemIntentUpdateRequestDetails,
            Privy::Internal::AnyHash
          )
        end

      # Array of values to add to the condition set. Maximum 100 items per request.
      sig { returns(T::Array[Privy::ConditionSetItemValueInput]) }
      attr_accessor :body

      sig do
        returns(
          Privy::ConditionSetItemIntentUpdateRequestDetails::Method::TaggedSymbol
        )
      end
      attr_accessor :method_

      sig { returns(String) }
      attr_accessor :url

      # Request details for replacing the items of a condition set via intent.
      sig do
        params(
          body: T::Array[Privy::ConditionSetItemValueInput::OrHash],
          method_:
            Privy::ConditionSetItemIntentUpdateRequestDetails::Method::OrSymbol,
          url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Array of values to add to the condition set. Maximum 100 items per request.
        body:,
        method_:,
        url:
      )
      end

      sig do
        override.returns(
          {
            body: T::Array[Privy::ConditionSetItemValueInput],
            method_:
              Privy::ConditionSetItemIntentUpdateRequestDetails::Method::TaggedSymbol,
            url: String
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
              Privy::ConditionSetItemIntentUpdateRequestDetails::Method
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PUT =
          T.let(
            :PUT,
            Privy::ConditionSetItemIntentUpdateRequestDetails::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::ConditionSetItemIntentUpdateRequestDetails::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
