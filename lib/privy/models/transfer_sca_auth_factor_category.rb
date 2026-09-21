# frozen_string_literal: true

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

      variant const: -> { Privy::Models::TransferScaAuthFactorCategory::KNOWLEDGE }

      variant const: -> { Privy::Models::TransferScaAuthFactorCategory::POSSESSION }

      variant const: -> { Privy::Models::TransferScaAuthFactorCategory::INHERENCE }

      variant String

      # @!method self.variants
      #   @return [Array(Symbol, String)]

      define_sorbet_constant!(:Variants) do
        T.type_alias { T.any(Privy::TransferScaAuthFactorCategory::TaggedSymbol, String) }
      end

      # @!group

      KNOWLEDGE = :knowledge
      POSSESSION = :possession
      INHERENCE = :inherence

      # @!endgroup
    end
  end
end
