# typed: strong

module Privy
  module Models
    class RuleIntentDeleteRequestDetails < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::RuleIntentDeleteRequestDetails, Privy::Internal::AnyHash)
        end

      sig do
        returns(Privy::RuleIntentDeleteRequestDetails::Method::TaggedSymbol)
      end
      attr_accessor :method_

      sig { returns(String) }
      attr_accessor :url

      sig { returns(T.nilable(Privy::RuleIntentDeleteRequestDetails::Body)) }
      attr_reader :body

      sig do
        params(body: Privy::RuleIntentDeleteRequestDetails::Body::OrHash).void
      end
      attr_writer :body

      # Request details for deleting a rule via intent.
      sig do
        params(
          method_: Privy::RuleIntentDeleteRequestDetails::Method::OrSymbol,
          url: String,
          body: Privy::RuleIntentDeleteRequestDetails::Body::OrHash
        ).returns(T.attached_class)
      end
      def self.new(method_:, url:, body: nil)
      end

      sig do
        override.returns(
          {
            method_:
              Privy::RuleIntentDeleteRequestDetails::Method::TaggedSymbol,
            url: String,
            body: Privy::RuleIntentDeleteRequestDetails::Body
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::RuleIntentDeleteRequestDetails::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DELETE =
          T.let(
            :DELETE,
            Privy::RuleIntentDeleteRequestDetails::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::RuleIntentDeleteRequestDetails::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Body < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::RuleIntentDeleteRequestDetails::Body,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(T.attached_class) }
        def self.new
        end

        sig { override.returns({}) }
        def to_hash
        end
      end
    end
  end
end
