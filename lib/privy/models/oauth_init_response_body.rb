# frozen_string_literal: true

module Privy
  module Models
    class OAuthInitResponseBody < Privy::Internal::Type::BaseModel
      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!method initialize(url:)
      #   The response for initiating an OAuth ceremony.
      #
      #   @param url [String]
    end
  end
end
