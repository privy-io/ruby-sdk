# frozen_string_literal: true

module Privy
  module Models
    class OwnerInputUser < Privy::Internal::Type::BaseModel
      # @!attribute user_id
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(user_id:)
      #   Owner input specifying a Privy user ID.
      #
      #   @param user_id [String]
    end
  end
end
