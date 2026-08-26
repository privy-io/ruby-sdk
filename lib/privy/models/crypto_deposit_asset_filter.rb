# frozen_string_literal: true

module Privy
  module Models
    # Which assets a deposit address accepts. Asset and chain use human-readable
    # aliases when known.
    module CryptoDepositAssetFilter
      extend Privy::Internal::Type::Union

      discriminator :mode

      # Match all assets.
      variant :all, -> { Privy::CryptoDepositAssetFilterAll }

      # Match only the specified assets, using human-readable aliases when known.
      variant :include, -> { Privy::CryptoDepositAssetFilterInclude }

      # Match all assets except the specified ones, using human-readable aliases when known.
      variant :exclude, -> { Privy::CryptoDepositAssetFilterExclude }

      # @!method self.variants
      #   @return [Array(Privy::Models::CryptoDepositAssetFilterAll, Privy::Models::CryptoDepositAssetFilterInclude, Privy::Models::CryptoDepositAssetFilterExclude)]
    end
  end
end
