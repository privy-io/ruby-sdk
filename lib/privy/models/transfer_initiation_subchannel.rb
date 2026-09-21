# frozen_string_literal: true

module Privy
  module Models
    # Whether the payment was made remotely or in person. Use `remote` for payments
    # initiated from a distance (mobile app, online banking, or e-commerce checkout);
    # `non_remote` for payments made in person (physical card, payment terminal, or
    # contactless tap).
    module TransferInitiationSubchannel
      extend Privy::Internal::Type::Union

      variant const: -> { Privy::Models::TransferInitiationSubchannel::REMOTE }

      variant const: -> { Privy::Models::TransferInitiationSubchannel::NON_REMOTE }

      variant String

      # @!method self.variants
      #   @return [Array(Symbol, String)]

      define_sorbet_constant!(:Variants) do
        T.type_alias { T.any(Privy::TransferInitiationSubchannel::TaggedSymbol, String) }
      end

      # @!group

      REMOTE = :remote
      NON_REMOTE = :non_remote

      # @!endgroup
    end
  end
end
