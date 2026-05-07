# typed: strong

module Privy
  module Models
    # The input for initializing a Coinbase on-ramp session.
    module CoinbaseOnRampInitInput
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::CoinbaseOnRampInitEthereumInput,
            Privy::CoinbaseOnRampInitSolanaInput
          )
        end

      sig do
        override.returns(T::Array[Privy::CoinbaseOnRampInitInput::Variants])
      end
      def self.variants
      end
    end
  end
end
