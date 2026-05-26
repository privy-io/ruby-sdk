# frozen_string_literal: true

module Privy
  module Models
    class FiatOnrampURLSessionResponse < Privy::Internal::Type::BaseModel
      # @!attribute session_id
      #
      #   @return [String]
      required :session_id, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::FiatOnrampURLSessionResponse::Type]
      required :type, enum: -> { Privy::FiatOnrampURLSessionResponse::Type }

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!method initialize(session_id:, type:, url:)
      #   Provider session initialization for popup-based providers.
      #
      #   @param session_id [String]
      #   @param type [Symbol, Privy::Models::FiatOnrampURLSessionResponse::Type]
      #   @param url [String]

      # @see Privy::Models::FiatOnrampURLSessionResponse#type
      module Type
        extend Privy::Internal::Type::Enum

        URL = :url

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
