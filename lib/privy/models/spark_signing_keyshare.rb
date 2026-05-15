# frozen_string_literal: true

module Privy
  module Models
    class SparkSigningKeyshare < Privy::Internal::Type::BaseModel
      # @!attribute owner_identifiers
      #
      #   @return [Array<String>]
      required :owner_identifiers, Privy::Internal::Type::ArrayOf[String]

      # @!attribute public_key
      #
      #   @return [String]
      required :public_key, String

      # @!attribute public_shares
      #
      #   @return [Hash{Symbol=>String}]
      required :public_shares, Privy::Internal::Type::HashOf[String]

      # @!attribute threshold
      #
      #   @return [Float]
      required :threshold, Float

      # @!attribute updated_time
      #
      #   @return [String]
      required :updated_time, String

      # @!method initialize(owner_identifiers:, public_key:, public_shares:, threshold:, updated_time:)
      #   A Spark signing keyshare.
      #
      #   @param owner_identifiers [Array<String>]
      #   @param public_key [String]
      #   @param public_shares [Hash{Symbol=>String}]
      #   @param threshold [Float]
      #   @param updated_time [String]
    end
  end
end
