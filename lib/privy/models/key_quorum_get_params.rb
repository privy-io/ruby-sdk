# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::KeyQuorums#get
    class KeyQuorumGetParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute key_quorum_id
      #   A unique identifier for a key quorum.
      #
      #   @return [String]
      required :key_quorum_id, String

      # @!method initialize(key_quorum_id:, request_options: {})
      #   @param key_quorum_id [String] A unique identifier for a key quorum.
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
