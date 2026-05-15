# frozen_string_literal: true

module Privy
  module Models
    class CustomJwtLinkRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute token
      #
      #   @return [String, nil]
      optional :token, String

      # @!method initialize(token: nil)
      #   The request body for linking a custom JWT account.
      #
      #   @param token [String]
    end
  end
end
