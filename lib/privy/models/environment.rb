# frozen_string_literal: true

module Privy
  module Models
    # The Privy API environment.
    module Environment
      extend Privy::Internal::Type::Enum

      SANDBOX = :sandbox
      PRODUCTION = :production

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
