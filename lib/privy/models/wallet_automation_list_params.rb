# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::WalletAutomations#list
    class WalletAutomationListParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute cursor
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute limit
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute wallet_id
      #
      #   @return [String, nil]
      optional :wallet_id, String

      # @!method initialize(cursor: nil, limit: nil, wallet_id: nil, request_options: {})
      #   @param cursor [String]
      #   @param limit [Integer]
      #   @param wallet_id [String]
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
