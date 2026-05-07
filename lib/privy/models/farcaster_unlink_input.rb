# frozen_string_literal: true

module Privy
  module Models
    class FarcasterUnlinkInput < Privy::Internal::Type::BaseModel
      # @!attribute fid
      #
      #   @return [Float]
      required :fid, Float

      # @!method initialize(fid:)
      #   Input for unlinking a Farcaster account.
      #
      #   @param fid [Float]
    end
  end
end
