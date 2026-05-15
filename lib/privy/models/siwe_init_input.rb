# frozen_string_literal: true

module Privy
  module Models
    class SiweInitInput < Privy::Internal::Type::BaseModel
      # @!attribute token
      #
      #   @return [String, nil]
      optional :token, String

      # @!attribute address
      #
      #   @return [String, nil]
      optional :address, String

      # @!method initialize(token: nil, address: nil)
      #   Input for initiating a SIWE ceremony.
      #
      #   @param token [String]
      #   @param address [String]
    end
  end
end
