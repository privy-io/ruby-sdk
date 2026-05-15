# frozen_string_literal: true

module Privy
  module Models
    class PasskeyRelyingParty < Privy::Internal::Type::BaseModel
      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute id
      #
      #   @return [String, nil]
      optional :id, String

      # @!method initialize(name:, id: nil)
      #   Relying party information for a WebAuthn ceremony.
      #
      #   @param name [String]
      #   @param id [String]
    end
  end
end
