# frozen_string_literal: true

module Privy
  module Models
    # Input for adding a denylist entry. Discriminated by type.
    module DenylistEntryCreateRequestBody
      extend Privy::Internal::Type::Union

      discriminator :type

      # Denylist input for an email address, which also blocks its `+` and `.` variants.
      variant :email, -> { Privy::DenylistEmailInput }

      # Denylist input for an email domain, which blocks every email address on the domain.
      variant :emailDomain, -> { Privy::DenylistEmailDomainInput }

      # Denylist input for a phone number.
      variant :phone, -> { Privy::DenylistPhoneInput }

      # Denylist input for an Ethereum wallet address, which blocks SIWE logins.
      variant :ethereumAddress, -> { Privy::DenylistEthereumAddressInput }

      # Denylist input for a Solana wallet address, which blocks SIWS logins.
      variant :solanaAddress, -> { Privy::DenylistSolanaAddressInput }

      # @!method self.variants
      #   @return [Array(Privy::Models::DenylistEmailInput, Privy::Models::DenylistEmailDomainInput, Privy::Models::DenylistPhoneInput, Privy::Models::DenylistEthereumAddressInput, Privy::Models::DenylistSolanaAddressInput)]
    end
  end
end
