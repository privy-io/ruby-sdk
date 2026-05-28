# frozen_string_literal: true

module Privy
  module Models
    class CreateLinkAuthIntentResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Auth intent created. Pass id to authenticate().
      #
      #   @return [Privy::Models::LinkAuthIntentCreated, Privy::Models::LinkAuthIntentNoAccount]
      required :data, union: -> { Privy::CreateLinkAuthIntentResponse::Data }

      # @!method initialize(data:)
      #   The created Link auth intent.
      #
      #   @param data [Privy::Models::LinkAuthIntentCreated, Privy::Models::LinkAuthIntentNoAccount] Auth intent created. Pass id to authenticate().

      # Auth intent created. Pass id to authenticate().
      #
      # @see Privy::Models::CreateLinkAuthIntentResponse#data
      module Data
        extend Privy::Internal::Type::Union

        discriminator :status

        # Auth intent created. Pass id to authenticate().
        variant :created, -> { Privy::LinkAuthIntentCreated }

        # No Link account for this email. Call registerLinkUser() then retry.
        variant :no_account, -> { Privy::LinkAuthIntentNoAccount }

        # @!method self.variants
        #   @return [Array(Privy::Models::LinkAuthIntentCreated, Privy::Models::LinkAuthIntentNoAccount)]
      end
    end
  end
end
