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

      # Empty request body for a rule delete intent.
      sig { returns(T.nilable(Privy::RuleIntentDeleteRequestBody)) }
      attr_reader :body

      sig { params(body: Privy::RuleIntentDeleteRequestBody::OrHash).void }
      attr_writer :body

      # Request details for deleting a rule via intent.
      sig do
        params(
          method_: Privy::RuleIntentDeleteRequestDetails::Method::OrSymbol,
          url: String,
          body: Privy::RuleIntentDeleteRequestBody::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        url:,
        # Empty request body for a rule delete intent.
        body: nil
      )
      end

      sig do
        override.returns(
          {
            method_:
              Privy::RuleIntentDeleteRequestDetails::Method::TaggedSymbol,
            url: String,
            body: Privy::RuleIntentDeleteRequestBody
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
    end
  end
end
