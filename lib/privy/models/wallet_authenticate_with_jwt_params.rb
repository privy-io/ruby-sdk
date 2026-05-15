# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Wallets#authenticate_with_jwt
    class WalletAuthenticateWithJwtParams < Privy::Models::WalletAuthenticateRequestBody
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
