# frozen_string_literal: true

module Privy
  module Models
    class LinkAuthIntentCreated < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   The Link auth intent ID.
      #
      #   @return [String]
      required :id, String

      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::LinkAuthIntentCreated::Status]
      required :status, enum: -> { Privy::LinkAuthIntentCreated::Status }

      # @!method initialize(id:, status:)
      #   Auth intent created. Pass id to authenticate().
      #
      #   @param id [String] The Link auth intent ID.
      #
      #   @param status [Symbol, Privy::Models::LinkAuthIntentCreated::Status]

      # @see Privy::Models::LinkAuthIntentCreated#status
      module Status
        extend Privy::Internal::Type::Enum

        CREATED = :created

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
