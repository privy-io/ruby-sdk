# frozen_string_literal: true

module Privy
  module Models
    class PatchUsersCustomMetadata < Privy::Internal::Type::BaseModel
      # @!attribute custom_metadata
      #   Custom metadata associated with the user.
      #
      #   @return [Hash{Symbol=>String, Float, Boolean}]
      required :custom_metadata, -> { Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem] }

      # @!method initialize(custom_metadata:)
      #   The payload for partially updating custom metadata on a user.
      #
      #   @param custom_metadata [Hash{Symbol=>String, Float, Boolean}] Custom metadata associated with the user.
    end
  end
end
