# frozen_string_literal: true

module Privy
  module Models
    # Provider environment (production or sandbox).
    module KyxEnvironment
      extend Privy::Internal::Type::Enum

      PRODUCTION = :production
      SANDBOX = :sandbox

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
