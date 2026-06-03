# frozen_string_literal: true

module Privy
  module Models
    class OAuthGrantListResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Active grants.
      #
      #   @return [Array<Privy::Models::OAuthGrant>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::OAuthGrant] }

      # @!method initialize(data:)
      #   List of active OAuth grants for the authenticated user.
      #
      #   @param data [Array<Privy::Models::OAuthGrant>] Active grants.
    end
  end
end
