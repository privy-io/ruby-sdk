# frozen_string_literal: true

module Privy
  module Models
    class UserReference < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:)
      #   A reference to a user by their unique identifier.
      #
      #   @param id [String]
    end
  end
end
