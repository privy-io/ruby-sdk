# frozen_string_literal: true

module Privy
  module Models
    module Users
      # @see Privy::Resources::Users::ExternalFiatAccounts#create
      class ExternalFiatAccountCreateParams < Privy::Models::CreateExternalFiatAccountRequestBody
        extend Privy::Internal::Type::RequestParameters::Converter
        include Privy::Internal::Type::RequestParameters

        # @!attribute user_id
        #   The DID of the user to create the external fiat account for.
        #
        #   @return [String]
        required :user_id, String

        # @!method initialize(user_id:, request_options: {})
        #   @param user_id [String] The DID of the user to create the external fiat account for.
        #
        #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
