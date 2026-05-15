# typed: strong

module Privy
  module Models
    class TransactionGetParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::TransactionGetParams, Privy::Internal::AnyHash)
        end

      # ID of the transaction.
      sig { returns(String) }
      attr_accessor :transaction_id

      sig do
        params(
          transaction_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # ID of the transaction.
        transaction_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { transaction_id: String, request_options: Privy::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
