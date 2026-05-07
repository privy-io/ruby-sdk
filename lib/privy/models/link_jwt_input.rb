# frozen_string_literal: true

module Privy
  module Models
    class LinkJwtInput < Privy::Internal::Type::BaseModel
      # @!attribute token
      #
      #   @return [String, nil]
      optional :token, String

      # @!method initialize(token: nil)
      #   Input for linking a custom JWT account.
      #
      #   @param token [String]
    end
  end
end
