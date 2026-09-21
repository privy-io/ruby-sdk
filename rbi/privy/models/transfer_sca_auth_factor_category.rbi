# typed: strong

module Privy
  module Models
    # The type of authentication factor used. Known values are: `knowledge` (something
    # only the user knows, e.g. a PIN or password), `possession` (something only the
    # user has, e.g. a phone receiving an OTP or a hardware token), and `inherence`
    # (something the user is, e.g. a fingerprint or face scan). When `outcome` is
    # `sca_used`, the two factors in `auth_factors` must belong to two different
    # categories.
    module TransferScaAuthFactorCategory
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(Privy::TransferScaAuthFactorCategory::TaggedSymbol, String)
        end

      sig do
        override.returns(
          T::Array[Privy::TransferScaAuthFactorCategory::Variants]
        )
      end
      def self.variants
      end

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::TransferScaAuthFactorCategory) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      KNOWLEDGE =
        T.let(:knowledge, Privy::TransferScaAuthFactorCategory::TaggedSymbol)
      POSSESSION =
        T.let(:possession, Privy::TransferScaAuthFactorCategory::TaggedSymbol)
      INHERENCE =
        T.let(:inherence, Privy::TransferScaAuthFactorCategory::TaggedSymbol)
    end
  end
end
