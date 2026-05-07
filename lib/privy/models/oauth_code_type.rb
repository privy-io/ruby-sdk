# frozen_string_literal: true

module Privy
  module Models
    # The type of OAuth authorization code.
    module OAuthCodeType
      extend Privy::Internal::Type::Enum

      RAW = :raw

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
