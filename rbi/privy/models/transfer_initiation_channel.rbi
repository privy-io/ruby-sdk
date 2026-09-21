# typed: strong

module Privy
  module Models
    # How the payment was initiated. Use `p2p_mobile_payment` for peer-to-peer
    # transfers initiated on a mobile device; `other_mobile_payment` for non-P2P
    # mobile-initiated payments (e.g. a merchant payment via a mobile app); `other`
    # for payments not relying on a mobile device.
    module TransferInitiationChannel
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(Privy::TransferInitiationChannel::TaggedSymbol, String)
        end

      sig do
        override.returns(T::Array[Privy::TransferInitiationChannel::Variants])
      end
      def self.variants
      end

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::TransferInitiationChannel) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      P2P_MOBILE_PAYMENT =
        T.let(
          :p2p_mobile_payment,
          Privy::TransferInitiationChannel::TaggedSymbol
        )
      OTHER_MOBILE_PAYMENT =
        T.let(
          :other_mobile_payment,
          Privy::TransferInitiationChannel::TaggedSymbol
        )
      OTHER = T.let(:other, Privy::TransferInitiationChannel::TaggedSymbol)
    end
  end
end
