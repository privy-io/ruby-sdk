# frozen_string_literal: true

module Privy
  module Models
    # Input for adding or removing an allowlist entry. Discriminated by type.
    module UserInviteInput
      extend Privy::Internal::Type::Union

      discriminator :type

      # Allowlist invite input for an email address.
      variant :email, -> { Privy::EmailInviteInput }

      # Allowlist invite input for an email domain.
      variant :emailDomain, -> { Privy::EmailDomainInviteInput }

      # Allowlist invite input for a wallet address.
      variant :wallet, -> { Privy::WalletInviteInput }

      # Allowlist invite input for a phone number.
      variant :phone, -> { Privy::PhoneInviteInput }

      # @!method self.variants
      #   @return [Array(Privy::Models::EmailInviteInput, Privy::Models::EmailDomainInviteInput, Privy::Models::WalletInviteInput, Privy::Models::PhoneInviteInput)]
    end
  end
end
