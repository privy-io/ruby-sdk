# typed: strong

module Privy
  module Models
    class TransactionScanningCalldata < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransactionScanningCalldata, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :function_selector

      sig { returns(T.nilable(String)) }
      attr_reader :function_declaration

      sig { params(function_declaration: String).void }
      attr_writer :function_declaration

      sig { returns(T.nilable(String)) }
      attr_reader :function_signature

      sig { params(function_signature: String).void }
      attr_writer :function_signature

      # Decoded calldata from a scanned transaction.
      sig do
        params(
          function_selector: String,
          function_declaration: String,
          function_signature: String
        ).returns(T.attached_class)
      end
      def self.new(
        function_selector:,
        function_declaration: nil,
        function_signature: nil
      )
      end

      sig do
        override.returns(
          {
            function_selector: String,
            function_declaration: String,
            function_signature: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
