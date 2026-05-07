# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Users#get_by_telegram_user_id
    class UserGetByTelegramUserIDParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute telegram_user_id
      #
      #   @return [String]
      required :telegram_user_id, String

      # @!method initialize(telegram_user_id:, request_options: {})
      #   @param telegram_user_id [String]
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
