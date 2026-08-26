# frozen_string_literal: true

module Privy
  module Models
    module Users
      # @see Privy::Resources::Users::ExternalFiatAccounts#get
      class ExternalFiatAccountGetParams < Privy::Internal::Type::BaseModel
        extend Privy::Internal::Type::RequestParameters::Converter
        include Privy::Internal::Type::RequestParameters

        # @!attribute user_id
        #   The DID of the user.
        #
        #   @return [String]
        required :user_id, String

        # @!attribute account_id
        #   The ID of the external fiat account.
        #
        #   @return [String]
        required :account_id, String

        # @!method initialize(user_id:, account_id:, request_options: {})
        #   @param user_id [String] The DID of the user.
        #
        #   @param account_id [String] The ID of the external fiat account.
        #
        #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
