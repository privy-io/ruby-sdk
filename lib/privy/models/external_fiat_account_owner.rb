# frozen_string_literal: true

module Privy
  module Models
    # The individual or business that owns the account. Required for `iban`, `gb`, and
    # `swift` accounts.
    module ExternalFiatAccountOwner
      extend Privy::Internal::Type::Union

      discriminator :type

      # An individual who owns an external fiat account.
      variant :individual, -> { Privy::ExternalFiatAccountIndividualOwner }

      # A business that owns an external fiat account.
      variant :business, -> { Privy::ExternalFiatAccountBusinessOwner }

      # @!method self.variants
      #   @return [Array(Privy::Models::ExternalFiatAccountIndividualOwner, Privy::Models::ExternalFiatAccountBusinessOwner)]
    end
  end
end
