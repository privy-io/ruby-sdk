# frozen_string_literal: true

module Privy
  module Models
    # How deposit source wallets are chosen. Omission uses `dedicated`. Destination
    # reuse applies only to the destination's own chain type.
    module CryptoDepositAddressStrategy
      extend Privy::Internal::Type::Enum

      DEDICATED = :dedicated
      PREFER_DESTINATION = :prefer_destination
      REQUIRE_DESTINATION = :require_destination

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
