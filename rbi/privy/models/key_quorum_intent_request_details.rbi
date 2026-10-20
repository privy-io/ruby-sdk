# typed: strong

module Privy
  module Models
    class KeyQuorumIntentRequestDetails < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KeyQuorumIntentRequestDetails, Privy::Internal::AnyHash)
        end

      # Request input for updating an existing key quorum. At least one field must be
      # provided.
      sig { returns(Privy::KeyQuorumUpdateRequestBody) }
      attr_reader :body

      sig { params(body: Privy::KeyQuorumUpdateRequestBody::OrHash).void }
      attr_writer :body

      sig do
        returns(Privy::KeyQuorumIntentRequestDetails::Method::TaggedSymbol)
      end
      attr_accessor :method_

      sig { returns(String) }
      attr_accessor :url

      # Request details for a key quorum intent.
      sig do
        params(
          body: Privy::KeyQuorumUpdateRequestBody::OrHash,
          method_: Privy::KeyQuorumIntentRequestDetails::Method::OrSymbol,
          url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Request input for updating an existing key quorum. At least one field must be
        # provided.
        body:,
        method_:,
        url:
      )
      end

      sig do
        override.returns(
          {
            body: Privy::KeyQuorumUpdateRequestBody,
            method_: Privy::KeyQuorumIntentRequestDetails::Method::TaggedSymbol,
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
            T.all(Symbol, Privy::KeyQuorumIntentRequestDetails::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PATCH =
          T.let(
            :PATCH,
            Privy::KeyQuorumIntentRequestDetails::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::KeyQuorumIntentRequestDetails::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
