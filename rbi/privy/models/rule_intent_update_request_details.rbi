# typed: strong

module Privy
  module Models
    class RuleIntentUpdateRequestDetails < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::RuleIntentUpdateRequestDetails, Privy::Internal::AnyHash)
        end

      # The rules that apply to each method the policy covers.
      sig { returns(Privy::PolicyRuleRequestBody) }
      attr_reader :body

      sig { params(body: Privy::PolicyRuleRequestBody::OrHash).void }
      attr_writer :body

      sig do
        returns(Privy::RuleIntentUpdateRequestDetails::Method::TaggedSymbol)
      end
      attr_accessor :method_

      sig { returns(String) }
      attr_accessor :url

      # Request details for updating a rule via intent.
      sig do
        params(
          body: Privy::PolicyRuleRequestBody::OrHash,
          method_: Privy::RuleIntentUpdateRequestDetails::Method::OrSymbol,
          url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The rules that apply to each method the policy covers.
        body:,
        method_:,
        url:
      )
      end

      sig do
        override.returns(
          {
            body: Privy::PolicyRuleRequestBody,
            method_:
              Privy::RuleIntentUpdateRequestDetails::Method::TaggedSymbol,
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
            T.all(Symbol, Privy::RuleIntentUpdateRequestDetails::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PATCH =
          T.let(
            :PATCH,
            Privy::RuleIntentUpdateRequestDetails::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::RuleIntentUpdateRequestDetails::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
