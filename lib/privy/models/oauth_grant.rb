# frozen_string_literal: true

module Privy
  module Models
    class OAuthGrant < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   The grant identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   When the grant was first created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute grant_type
      #   The OAuth grant type that created this grant.
      #
      #   @return [Symbol, Privy::Models::OAuthGrant::GrantType]
      required :grant_type, enum: -> { Privy::OAuthGrant::GrantType }

      # @!attribute last_used_at
      #   When the grant was last used (e.g. token refreshed).
      #
      #   @return [Time]
      required :last_used_at, Time

      # @!method initialize(id:, created_at:, grant_type:, last_used_at:)
      #   An active OAuth grant representing an authorized session.
      #
      #   @param id [String] The grant identifier.
      #
      #   @param created_at [Time] When the grant was first created.
      #
      #   @param grant_type [Symbol, Privy::Models::OAuthGrant::GrantType] The OAuth grant type that created this grant.
      #
      #   @param last_used_at [Time] When the grant was last used (e.g. token refreshed).

      # The OAuth grant type that created this grant.
      #
      # @see Privy::Models::OAuthGrant#grant_type
      module GrantType
        extend Privy::Internal::Type::Enum

        DEVICE_CODE = :device_code

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
