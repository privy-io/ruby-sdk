# frozen_string_literal: true

module Privy
  module Models
    class OrganizationsListResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Privy::Models::Organization>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::Organization] }

      # @!attribute next_cursor
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(data:, next_cursor:)
      #   Response returned when listing organizations for an app.
      #
      #   @param data [Array<Privy::Models::Organization>]
      #   @param next_cursor [String, nil]
    end
  end
end
