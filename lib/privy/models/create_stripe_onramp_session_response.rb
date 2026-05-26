# frozen_string_literal: true

module Privy
  module Models
    class CreateStripeOnrampSessionResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute session_id
      #
      #   @return [String]
      required :session_id, String

      # @!method initialize(id:, session_id:)
      #   The created onramp session.
      #
      #   @param id [String]
      #   @param session_id [String]
    end
  end
end
