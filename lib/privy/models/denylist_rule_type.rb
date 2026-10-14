# frozen_string_literal: true

module Privy
  module Models
    # The type of identifier a denylist rule blocks.
    module DenylistRuleType
      extend Privy::Internal::Type::Union

      variant const: -> { Privy::Models::DenylistRuleType::EMAIL }

      variant const: -> { Privy::Models::DenylistRuleType::EMAIL_DOMAIN }

      variant const: -> { Privy::Models::DenylistRuleType::PHONE }

      variant const: -> { Privy::Models::DenylistRuleType::ETHEREUM_ADDRESS }

      variant const: -> { Privy::Models::DenylistRuleType::SOLANA_ADDRESS }

      variant String

      # @!method self.variants
      #   @return [Array(Symbol, String)]

      define_sorbet_constant!(:Variants) do
        T.type_alias { T.any(Privy::DenylistRuleType::TaggedSymbol, String) }
      end

      # @!group

      EMAIL = :email
      EMAIL_DOMAIN = :emailDomain
      PHONE = :phone
      ETHEREUM_ADDRESS = :ethereumAddress
      SOLANA_ADDRESS = :solanaAddress

      # @!endgroup
    end
  end
end
