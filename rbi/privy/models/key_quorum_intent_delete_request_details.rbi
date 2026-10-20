# typed: strong

module Privy
  module Models
    class KeyQuorumIntentDeleteRequestDetails < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KeyQuorumIntentDeleteRequestDetails,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::KeyQuorumIntentDeleteRequestDetails::Method::TaggedSymbol
        )
      end
      attr_accessor :method_

      sig { returns(String) }
      attr_accessor :url

      # Empty request body for a key quorum delete intent.
      sig { returns(T.nilable(Privy::KeyQuorumIntentDeleteRequestBody)) }
      attr_reader :body

      sig { params(body: Privy::KeyQuorumIntentDeleteRequestBody::OrHash).void }
      attr_writer :body

      # Request details for deleting a key quorum via intent.
      sig do
        params(
          method_: Privy::KeyQuorumIntentDeleteRequestDetails::Method::OrSymbol,
          url: String,
          body: Privy::KeyQuorumIntentDeleteRequestBody::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        url:,
        # Empty request body for a key quorum delete intent.
        body: nil
      )
      end

      sig do
        override.returns(
          {
            method_:
              Privy::KeyQuorumIntentDeleteRequestDetails::Method::TaggedSymbol,
            url: String,
            body: Privy::KeyQuorumIntentDeleteRequestBody
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::KeyQuorumIntentDeleteRequestDetails::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DELETE =
          T.let(
            :DELETE,
            Privy::KeyQuorumIntentDeleteRequestDetails::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KeyQuorumIntentDeleteRequestDetails::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
