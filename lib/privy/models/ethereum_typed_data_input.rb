# frozen_string_literal: true

module Privy
  module Models
    class EthereumTypedDataInput < Privy::Internal::Type::BaseModel
      # @!attribute domain
      #   The domain parameters for EIP-712 typed data signing.
      #
      #   @return [Hash{Symbol=>Object}]
      required :domain, Privy::Internal::Type::HashOf[Privy::Internal::Type::Unknown]

      # @!attribute message
      #
      #   @return [Hash{Symbol=>Object}]
      required :message, Privy::Internal::Type::HashOf[Privy::Internal::Type::Unknown]

      # @!attribute primary_type
      #
      #   @return [String]
      required :primary_type, String

      # @!attribute types
      #   The type definitions for EIP-712 typed data signing.
      #
      #   @return [Hash{Symbol=>Array<Privy::Models::TypedDataTypeFieldInput>}]
      required :types,
               -> { Privy::Internal::Type::HashOf[Privy::Internal::Type::ArrayOf[Privy::TypedDataTypeFieldInput]] }

      # @!method initialize(domain:, message:, primary_type:, types:)
      #   EIP-712 typed data object.
      #
      #   @param domain [Hash{Symbol=>Object}] The domain parameters for EIP-712 typed data signing.
      #
      #   @param message [Hash{Symbol=>Object}]
      #
      #   @param primary_type [String]
      #
      #   @param types [Hash{Symbol=>Array<Privy::Models::TypedDataTypeFieldInput>}] The type definitions for EIP-712 typed data signing.
    end
  end
end
