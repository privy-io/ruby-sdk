# frozen_string_literal: true

module Privy
  module Models
    # Whether to use the sandbox or production environment for fiat onramp.
    module FiatOnrampEnvironment
      extend Privy::Internal::Type::Enum

      SANDBOX = :sandbox
      PRODUCTION = :production

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
