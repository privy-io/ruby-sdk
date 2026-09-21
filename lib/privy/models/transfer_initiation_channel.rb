# frozen_string_literal: true

module Privy
  module Models
    # How the payment was initiated. Use `p2p_mobile_payment` for peer-to-peer
    # transfers initiated on a mobile device; `other_mobile_payment` for non-P2P
    # mobile-initiated payments (e.g. a merchant payment via a mobile app); `other`
    # for payments not relying on a mobile device.
    module TransferInitiationChannel
      extend Privy::Internal::Type::Union

      variant const: -> { Privy::Models::TransferInitiationChannel::P2P_MOBILE_PAYMENT }

      variant const: -> { Privy::Models::TransferInitiationChannel::OTHER_MOBILE_PAYMENT }

      variant const: -> { Privy::Models::TransferInitiationChannel::OTHER }

      variant String

      # @!method self.variants
      #   @return [Array(Symbol, String)]

      define_sorbet_constant!(:Variants) do
        T.type_alias { T.any(Privy::TransferInitiationChannel::TaggedSymbol, String) }
      end

      # @!group

      P2P_MOBILE_PAYMENT = :p2p_mobile_payment
      OTHER_MOBILE_PAYMENT = :other_mobile_payment
      OTHER = :other

      # @!endgroup
    end
  end
end
