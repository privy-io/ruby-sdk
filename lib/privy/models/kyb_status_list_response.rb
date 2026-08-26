# frozen_string_literal: true

module Privy
  module Models
    class KYBStatusListResponse < Privy::Internal::Type::BaseModel
      # @!attribute kyb_statuses
      #
      #   @return [Array<Privy::Models::KYBStatusResponse>]
      required :kyb_statuses, -> { Privy::Internal::Type::ArrayOf[Privy::KYBStatusResponse] }

      # @!attribute next_cursor
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(kyb_statuses:, next_cursor:)
      #   List of KYB status snapshots, one per configured provider/environment.
      #
      #   @param kyb_statuses [Array<Privy::Models::KYBStatusResponse>]
      #   @param next_cursor [String, nil]
    end
  end
end
