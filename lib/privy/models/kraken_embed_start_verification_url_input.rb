# frozen_string_literal: true

module Privy
  module Models
    # Discriminated union of all start verification URL input types.
    module KrakenEmbedStartVerificationURLInput
      extend Privy::Internal::Type::Union

      discriminator :type

      # Input payload for starting proof of identity verification via URLs.
      variant :proof_of_identity, -> { Privy::KrakenEmbedStartIdentityVerificationURLInput }

      # Input payload for starting proof of address verification via URL.
      variant :proof_of_address, -> { Privy::KrakenEmbedStartAddressVerificationURLInput }

      # Input payload for starting proof of liveness verification via URLs.
      variant :proof_of_liveness, -> { Privy::KrakenEmbedStartLivenessVerificationURLInput }

      # @!method self.variants
      #   @return [Array(Privy::Models::KrakenEmbedStartIdentityVerificationURLInput, Privy::Models::KrakenEmbedStartAddressVerificationURLInput, Privy::Models::KrakenEmbedStartLivenessVerificationURLInput)]
    end
  end
end
