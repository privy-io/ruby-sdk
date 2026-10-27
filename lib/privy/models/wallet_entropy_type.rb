# frozen_string_literal: true

module Privy
  module Models
    # The entropy type of the wallet.
    module WalletEntropyType
      extend Privy::Internal::Type::Union

      variant const: -> { Privy::Models::WalletEntropyType::HD }

      variant const: -> { Privy::Models::WalletEntropyType::PRIVATE_KEY }

      variant const: -> { Privy::Models::WalletEntropyType::ED25519_SCALAR }

      variant String

      # @!method self.variants
      #   @return [Array(Symbol, String)]

      define_sorbet_constant!(:Variants) do
        T.type_alias { T.any(Privy::WalletEntropyType::TaggedSymbol, String) }
      end

      # @!group

      HD = :hd
      PRIVATE_KEY = :"private-key"
      ED25519_SCALAR = :"ed25519-scalar"

      # @!endgroup
    end
  end
end
