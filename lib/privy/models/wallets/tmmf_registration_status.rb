# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # A user's registration status with a tMMF provider, read live from the provider.
      module TmmfRegistrationStatus
        extend Privy::Internal::Type::Union

        variant const: -> { Privy::Models::Wallets::TmmfRegistrationStatus::PENDING }

        variant const: -> { Privy::Models::Wallets::TmmfRegistrationStatus::ACTION_REQUIRED }

        variant const: -> { Privy::Models::Wallets::TmmfRegistrationStatus::APPROVED }

        variant const: -> { Privy::Models::Wallets::TmmfRegistrationStatus::REJECTED }

        variant const: -> { Privy::Models::Wallets::TmmfRegistrationStatus::SUSPENDED }

        variant String

        # @!method self.variants
        #   @return [Array(Symbol, String)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(Privy::Wallets::TmmfRegistrationStatus::TaggedSymbol, String) }
        end

        # @!group

        PENDING = :pending
        ACTION_REQUIRED = :action_required
        APPROVED = :approved
        REJECTED = :rejected
        SUSPENDED = :suspended

        # @!endgroup
      end
    end
  end
end
