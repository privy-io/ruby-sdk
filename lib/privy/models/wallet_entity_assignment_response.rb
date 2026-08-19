# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Wallets#assign_entity
    class WalletEntityAssignmentResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   Unique wallet entity assignment identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   Unix timestamp when the assignment was created.
      #
      #   @return [Float]
      required :created_at, Float

      # @!attribute entity
      #   The entity a wallet is attributed to.
      #
      #   @return [Privy::Models::WalletEntity]
      required :entity, -> { Privy::WalletEntity }

      # @!attribute updated_at
      #   Unix timestamp when the assignment was last updated.
      #
      #   @return [Float]
      required :updated_at, Float

      # @!attribute wallet_id
      #   ID of the assigned wallet.
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(id:, created_at:, entity:, updated_at:, wallet_id:)
      #   The entity assignment for a wallet.
      #
      #   @param id [String] Unique wallet entity assignment identifier.
      #
      #   @param created_at [Float] Unix timestamp when the assignment was created.
      #
      #   @param entity [Privy::Models::WalletEntity] The entity a wallet is attributed to.
      #
      #   @param updated_at [Float] Unix timestamp when the assignment was last updated.
      #
      #   @param wallet_id [String] ID of the assigned wallet.
    end
  end
end
