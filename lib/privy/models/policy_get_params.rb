# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Policies#get
    class PolicyGetParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute policy_id
      #
      #   @return [String]
      required :policy_id, String

      # @!method initialize(policy_id:, request_options: {})
      #   @param policy_id [String]
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
