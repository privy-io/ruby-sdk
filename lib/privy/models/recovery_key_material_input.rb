# frozen_string_literal: true

module Privy
  module Models
    class RecoveryKeyMaterialInput < Privy::Internal::Type::BaseModel
      # @!attribute chain_type
      #
      #   @return [String, nil]
      optional :chain_type, String

      # @!method initialize(chain_type: nil)
      #   The input for getting the recovery key material.
      #
      #   @param chain_type [String]
    end
  end
end
