# frozen_string_literal: true

module Privy
  module Models
    class GetFiatOnrampURLResponse < Privy::Internal::Type::BaseModel
      # @!attribute session_id
      #
      #   @return [String]
      required :session_id, String

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!method initialize(session_id:, url:)
      #   The response containing a fiat onramp provider session URL.
      #
      #   @param session_id [String]
      #   @param url [String]
    end
  end
end
