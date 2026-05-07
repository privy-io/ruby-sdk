# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Users#get_by_wallet_address
    class UserGetByWalletAddressParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!method initialize(address:, request_options: {})
      #   @param address [String]
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
