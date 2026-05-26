# frozen_string_literal: true

module Privy
  module Models
    class CreateLinkAuthIntentResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   The Link auth intent ID used to initiate authentication.
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:)
      #   The created Link auth intent.
      #
      #   @param id [String] The Link auth intent ID used to initiate authentication.
    end
  end
end
