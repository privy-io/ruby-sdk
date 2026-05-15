# frozen_string_literal: true

module Privy
  module Models
    # The client type for iCloud recovery operations.
    module ICloudClientType
      extend Privy::Internal::Type::Enum

      WEB = :web
      EXPO_IOS = :"expo-ios"

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
