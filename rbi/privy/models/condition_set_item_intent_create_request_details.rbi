# typed: strong

module Privy
  module Models
    class ConditionSetItemIntentCreateRequestDetails < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::ConditionSetItemIntentCreateRequestDetails,
            Privy::Internal::AnyHash
          )
        end

      # Array of values to add to the condition set. Maximum 100 items per request.
      sig { returns(T::Array[Privy::ConditionSetItemValueInput]) }
      attr_accessor :body

      sig do
        returns(
          Privy::ConditionSetItemIntentCreateRequestDetails::Method::TaggedSymbol
        )
      end
      attr_accessor :method_

      sig { returns(String) }
      attr_accessor :url

      # Request details for adding items to a condition set via intent.
      sig do
        params(
          body: T::Array[Privy::ConditionSetItemValueInput::OrHash],
          method_:
            Privy::ConditionSetItemIntentCreateRequestDetails::Method::OrSymbol,
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
              Privy::ConditionSetItemIntentCreateRequestDetails::Method::TaggedSymbol,
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
              Privy::ConditionSetItemIntentCreateRequestDetails::Method
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        POST =
          T.let(
            :POST,
            Privy::ConditionSetItemIntentCreateRequestDetails::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::ConditionSetItemIntentCreateRequestDetails::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
