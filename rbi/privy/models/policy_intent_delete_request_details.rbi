# typed: strong

module Privy
  module Models
    class PolicyIntentDeleteRequestDetails < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::PolicyIntentDeleteRequestDetails,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::PolicyIntentDeleteRequestDetails::Method::TaggedSymbol)
      end
      attr_accessor :method_

      sig { returns(String) }
      attr_accessor :url

      # Empty request body for a policy delete intent.
      sig { returns(T.nilable(Privy::PolicyIntentDeleteRequestBody)) }
      attr_reader :body

      sig { params(body: Privy::PolicyIntentDeleteRequestBody::OrHash).void }
      attr_writer :body

      # Request details for deleting a policy via intent.
      sig do
        params(
          method_: Privy::PolicyIntentDeleteRequestDetails::Method::OrSymbol,
          url: String,
          body: Privy::PolicyIntentDeleteRequestBody::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        url:,
        # Empty request body for a policy delete intent.
        body: nil
      )
      end

      sig do
        override.returns(
          {
            method_:
              Privy::PolicyIntentDeleteRequestDetails::Method::TaggedSymbol,
            url: String,
            body: Privy::PolicyIntentDeleteRequestBody
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::PolicyIntentDeleteRequestDetails::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DELETE =
          T.let(
            :DELETE,
            Privy::PolicyIntentDeleteRequestDetails::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::PolicyIntentDeleteRequestDetails::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
