# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Users#unlink_linked_account
    class UserUnlinkLinkedAccountParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute user_id
      #   ID of the user.
      #
      #   @return [String]
      required :user_id, String

      # @!attribute handle
      #
      #   @return [String]
      required :handle, String

      # @!attribute type
      #   The possible types of linked accounts.
      #
      #   @return [Symbol, String, Privy::Models::LinkedAccountType]
      required :type, union: -> { Privy::LinkedAccountType }

      # @!attribute provider
      #
      #   @return [String, nil]
      optional :provider, String

      # @!method initialize(user_id:, handle:, type:, provider: nil, request_options: {})
      #   @param user_id [String] ID of the user.
      #
      #   @param handle [String]
      #
      #   @param type [Symbol, String, Privy::Models::LinkedAccountType] The possible types of linked accounts.
      #
      #   @param provider [String]
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
