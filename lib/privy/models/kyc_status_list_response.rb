# frozen_string_literal: true

module Privy
  module Models
    class KYCStatusListResponse < Privy::Internal::Type::BaseModel
      # @!attribute kyc_statuses
      #
      #   @return [Array<Privy::Models::KYCStatusResponse>]
      required :kyc_statuses, -> { Privy::Internal::Type::ArrayOf[Privy::KYCStatusResponse] }

      # @!attribute next_cursor
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(kyc_statuses:, next_cursor:)
      #   List of KYC status snapshots, one per configured provider/environment.
      #
      #   @param kyc_statuses [Array<Privy::Models::KYCStatusResponse>]
      #   @param next_cursor [String, nil]
    end
  end
end
