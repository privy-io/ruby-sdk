# frozen_string_literal: true

module Privy
  module Models
    class AuthorizationKeyResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Float]
      required :created_at, Float

      # @!attribute display_name
      #
      #   @return [String, nil]
      required :display_name, String, nil?: true

      # @!attribute public_key
      #
      #   @return [String]
      required :public_key, String

      # @!method initialize(id:, created_at:, display_name:, public_key:)
      #   Public-facing response for a wallet authorization key.
      #
      #   @param id [String]
      #   @param created_at [Float]
      #   @param display_name [String, nil]
      #   @param public_key [String]
    end
  end
end
