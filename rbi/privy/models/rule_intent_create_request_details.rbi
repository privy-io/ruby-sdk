# typed: strong

module Privy
  module Models
    class RuleIntentCreateRequestDetails < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::RuleIntentCreateRequestDetails, Privy::Internal::AnyHash)
        end

      # The rules that apply to each method the policy covers.
      sig { returns(Privy::PolicyRuleRequestBody) }
      attr_reader :body

      sig { params(body: Privy::PolicyRuleRequestBody::OrHash).void }
      attr_writer :body

      sig do
        returns(Privy::RuleIntentCreateRequestDetails::Method::TaggedSymbol)
      end
      attr_accessor :method_

      sig { returns(String) }
      attr_accessor :url

      # Request details for creating a rule via intent.
      sig do
        params(
          body: Privy::PolicyRuleRequestBody::OrHash,
          method_: Privy::RuleIntentCreateRequestDetails::Method::OrSymbol,
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
              Privy::RuleIntentCreateRequestDetails::Method::TaggedSymbol,
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
            T.all(Symbol, Privy::RuleIntentCreateRequestDetails::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        POST =
          T.let(
            :POST,
            Privy::RuleIntentCreateRequestDetails::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::RuleIntentCreateRequestDetails::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
