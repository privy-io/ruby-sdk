# frozen_string_literal: true

module Privy
  module Models
    class WalletAPIRegisterAuthorizationKeyInput < Privy::Internal::Type::BaseModel
      # @!attribute public_key
      #
      #   @return [String]
      required :public_key, String

      # @!attribute display_name
      #
      #   @return [String, nil]
      optional :display_name, String

      # @!attribute role
      #   The role of an authorization key, controlling what actions it can authorize on a
      #   wallet.
      #
      #   @return [Symbol, Privy::Models::AuthorizationKeyRole, nil]
      optional :role, enum: -> { Privy::AuthorizationKeyRole }, nil?: true

      # @!method initialize(public_key:, display_name: nil, role: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletAPIRegisterAuthorizationKeyInput} for more details.
      #
      #   Input for registering or updating an application public signing key for
      #   API-based wallet actions.
      #
      #   @param public_key [String]
      #
      #   @param display_name [String]
      #
      #   @param role [Symbol, Privy::Models::AuthorizationKeyRole, nil] The role of an authorization key, controlling what actions it can authorize on a
    end
  end
end
