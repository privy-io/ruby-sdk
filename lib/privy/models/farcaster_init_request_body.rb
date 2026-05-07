# frozen_string_literal: true

module Privy
  module Models
    class FarcasterInitRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute token
      #
      #   @return [String, nil]
      optional :token, String

      # @!attribute redirect_url
      #
      #   @return [String, nil]
      optional :redirect_url, String

      # @!attribute relying_party
      #
      #   @return [String, nil]
      optional :relying_party, String

      # @!method initialize(token: nil, redirect_url: nil, relying_party: nil)
      #   The request body for initiating a Farcaster connection.
      #
      #   @param token [String]
      #   @param redirect_url [String]
      #   @param relying_party [String]
    end
  end
end
