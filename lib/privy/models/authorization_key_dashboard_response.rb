# frozen_string_literal: true

module Privy
  module Models
    class AuthorizationKeyDashboardResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Float]
      required :created_at, Float

      # @!attribute display_name
      #
      #   @return [String, nil]
      required :display_name, String, nil?: true

      # @!attribute public_key
      #
      #   @return [String]
      required :public_key, String

      # @!attribute role
      #   The role of an authorization key, controlling what actions it can authorize on a
      #   wallet.
      #
      #   @return [Symbol, Privy::Models::AuthorizationKeyRole, nil]
      required :role, enum: -> { Privy::AuthorizationKeyRole }, nil?: true

      # @!method initialize(id:, created_at:, display_name:, public_key:, role:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::AuthorizationKeyDashboardResponse} for more details.
      #
      #   Dashboard response for a wallet authorization key (includes role, which is an
      #   internal-only concept).
      #
      #   @param id [String]
      #
      #   @param created_at [Float]
      #
      #   @param display_name [String, nil]
      #
      #   @param public_key [String]
      #
      #   @param role [Symbol, Privy::Models::AuthorizationKeyRole, nil] The role of an authorization key, controlling what actions it can authorize on a
    end
  end
end
