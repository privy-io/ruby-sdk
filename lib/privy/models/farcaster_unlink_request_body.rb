# frozen_string_literal: true

module Privy
  module Models
    class FarcasterUnlinkRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute fid
      #
      #   @return [Float]
      required :fid, Float

      # @!method initialize(fid:)
      #   The request body for unlinking a Farcaster account.
      #
      #   @param fid [Float]
    end
  end
end
