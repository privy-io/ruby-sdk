# typed: strong

module Privy
  module Models
    # A Moonpay currency code for a Solana asset.
    module MoonpaySolanaCurrencyCode
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::MoonpaySolanaCurrencyCode) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SOL = T.let(:SOL, Privy::MoonpaySolanaCurrencyCode::TaggedSymbol)
      USDC_SOL =
        T.let(:USDC_SOL, Privy::MoonpaySolanaCurrencyCode::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::MoonpaySolanaCurrencyCode::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
