# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Users#get_by_farcaster_id
    class UserGetByFarcasterIDParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute fid
      #
      #   @return [Float]
      required :fid, Float

      # @!method initialize(fid:, request_options: {})
      #   @param fid [Float]
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
