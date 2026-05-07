# frozen_string_literal: true

module Privy
  module Models
    class AbiParameter < Privy::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [String]
      required :type, String

      # @!attribute components
      #
      #   @return [Array<Hash{Symbol=>Object}>, nil]
      optional :components,
               Privy::Internal::Type::ArrayOf[Privy::Internal::Type::HashOf[Privy::Internal::Type::Unknown]]

      # @!attribute indexed
      #
      #   @return [Boolean, nil]
      optional :indexed, Privy::Internal::Type::Boolean

      # @!attribute internal_type
      #
      #   @return [String, nil]
      optional :internal_type, String, api_name: :internalType

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(type:, components: nil, indexed: nil, internal_type: nil, name: nil)
      #   A parameter in a Solidity ABI function or event definition.
      #
      #   @param type [String]
      #   @param components [Array<Hash{Symbol=>Object}>]
      #   @param indexed [Boolean]
      #   @param internal_type [String]
      #   @param name [String]
    end
  end
end
