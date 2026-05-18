# frozen_string_literal: true

module Privy
  module Models
    # An individual fee assessed on a transfer.
    module FeeLineItem
      extend Privy::Internal::Type::Union

      discriminator :type

      # Estimated fee paid to the relayer.
      variant :relayer, -> { Privy::RelayerFee }

      # Estimated fee paid to Privy.
      variant :privy, -> { Privy::PrivyFee }

      # Estimated fee paid to the developer.
      variant :developer, -> { Privy::DeveloperFee }

      # @!method self.variants
      #   @return [Array(Privy::Models::RelayerFee, Privy::Models::PrivyFee, Privy::Models::DeveloperFee)]
    end
  end
end
