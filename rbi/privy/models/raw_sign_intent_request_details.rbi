# typed: strong

module Privy
  module Models
    class RawSignIntentRequestDetails < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::RawSignIntentRequestDetails, Privy::Internal::AnyHash)
        end

      # Provide either `hash` (to sign a pre-computed hash) OR `bytes`, `encoding`, and
      # `hash_function` (to hash and then sign). These options are mutually exclusive.
      sig { returns(Privy::RawSignInput) }
      attr_reader :body

      sig { params(body: Privy::RawSignInput::OrHash).void }
      attr_writer :body

      sig { returns(Privy::RawSignIntentRequestDetails::Method::OrSymbol) }
      attr_accessor :method_

      sig { returns(String) }
      attr_accessor :url

      # Request details for a raw sign intent.
      sig do
        params(
          body: Privy::RawSignInput::OrHash,
          method_: Privy::RawSignIntentRequestDetails::Method::OrSymbol,
          url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Provide either `hash` (to sign a pre-computed hash) OR `bytes`, `encoding`, and
        # `hash_function` (to hash and then sign). These options are mutually exclusive.
        body:,
        method_:,
        url:
      )
      end

      sig do
        override.returns(
          {
            body: Privy::RawSignInput,
            method_: Privy::RawSignIntentRequestDetails::Method::OrSymbol,
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
            T.all(Symbol, Privy::RawSignIntentRequestDetails::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        POST =
          T.let(:POST, Privy::RawSignIntentRequestDetails::Method::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::RawSignIntentRequestDetails::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
