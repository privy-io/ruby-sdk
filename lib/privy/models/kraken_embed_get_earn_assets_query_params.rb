# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetEarnAssetsQueryParams < Privy::Internal::Type::BaseModel
      # @!attribute assets
      #
      #   @return [Array<String>, nil]
      optional :assets, Privy::Internal::Type::ArrayOf[String]

      # @!attribute currency
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute user
      #
      #   @return [String, nil]
      optional :user, String

      # @!method initialize(assets: nil, currency: nil, user: nil)
      #   Query parameters for listing earn assets.
      #
      #   @param assets [Array<String>]
      #   @param currency [String]
      #   @param user [String]
    end
  end
end
