# frozen_string_literal: true

module Privy
  module Models
    module Users
      # @see Privy::Resources::Users::KYC#initiate_tos
      class KYCInitiateTosParams < Privy::Models::KyxTosRequestBody
        extend Privy::Internal::Type::RequestParameters::Converter
        include Privy::Internal::Type::RequestParameters

        # @!attribute user_id
        #   The ID of the user.
        #
        #   @return [String]
        required :user_id, String

        # @!method initialize(user_id:, request_options: {})
        #   @param user_id [String] The ID of the user.
        #
        #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
