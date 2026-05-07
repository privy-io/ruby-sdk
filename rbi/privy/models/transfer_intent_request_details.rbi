# typed: strong

module Privy
  module Models
    class TransferIntentRequestDetails < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransferIntentRequestDetails, Privy::Internal::AnyHash)
        end

      # Request body for initiating a sponsored token transfer from an embedded wallet.
      sig { returns(Privy::TransferRequestBody) }
      attr_reader :body

      sig { params(body: Privy::TransferRequestBody::OrHash).void }
      attr_writer :body

      sig { returns(Privy::TransferIntentRequestDetails::Method::OrSymbol) }
      attr_accessor :method_

      sig { returns(String) }
      attr_accessor :url

      # Request details for a transfer intent.
      sig do
        params(
          body: Privy::TransferRequestBody::OrHash,
          method_: Privy::TransferIntentRequestDetails::Method::OrSymbol,
          url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Request body for initiating a sponsored token transfer from an embedded wallet.
        body:,
        method_:,
        url:
      )
      end

      sig do
        override.returns(
          {
            body: Privy::TransferRequestBody,
            method_: Privy::TransferIntentRequestDetails::Method::OrSymbol,
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
            T.all(Symbol, Privy::TransferIntentRequestDetails::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        POST =
          T.let(
            :POST,
            Privy::TransferIntentRequestDetails::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::TransferIntentRequestDetails::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
