# frozen_string_literal: true

module Privy
  module Models
    class TransactionScanningCalldata < Privy::Internal::Type::BaseModel
      # @!attribute function_selector
      #
      #   @return [String]
      required :function_selector, String

      # @!attribute function_declaration
      #
      #   @return [String, nil]
      optional :function_declaration, String

      # @!attribute function_signature
      #
      #   @return [String, nil]
      optional :function_signature, String

      # @!method initialize(function_selector:, function_declaration: nil, function_signature: nil)
      #   Decoded calldata from a scanned transaction.
      #
      #   @param function_selector [String]
      #   @param function_declaration [String]
      #   @param function_signature [String]
    end
  end
end
