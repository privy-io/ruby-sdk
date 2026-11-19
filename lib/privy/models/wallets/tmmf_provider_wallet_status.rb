# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # A registered wallet's status with its tMMF provider, read live from the
      # provider.
      module TmmfProviderWalletStatus
        extend Privy::Internal::Type::Union

        variant const: -> { Privy::Models::Wallets::TmmfProviderWalletStatus::CREATED }

        variant const: -> { Privy::Models::Wallets::TmmfProviderWalletStatus::APPROVED }

        variant const: -> { Privy::Models::Wallets::TmmfProviderWalletStatus::REJECTED }

        variant const: -> { Privy::Models::Wallets::TmmfProviderWalletStatus::DEACTIVATED }

        variant String

        # @!method self.variants
        #   @return [Array(Symbol, String)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(Privy::Wallets::TmmfProviderWalletStatus::TaggedSymbol, String) }
        end

        # @!group

        CREATED = :created
        APPROVED = :approved
        REJECTED = :rejected
        DEACTIVATED = :deactivated

        # @!endgroup
      end
    end
  end
end
