# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class TmmfPositionResponse < Privy::Internal::Type::BaseModel
        # @!attribute next_cursor
        #   Cursor of the next page of positions, or null on the last page.
        #
        #   @return [String, nil]
        required :next_cursor, String, nil?: true

        # @!attribute positions
        #   A page of the wallet's positions, one per registered fund and chain.
        #
        #   @return [Array<Privy::Models::Wallets::TmmfPosition>]
        required :positions, -> { Privy::Internal::Type::ArrayOf[Privy::Wallets::TmmfPosition] }

        # @!attribute wallet_id
        #   ID of the Privy wallet holding the positions.
        #
        #   @return [String]
        required :wallet_id, String

        # @!method initialize(next_cursor:, positions:, wallet_id:)
        #   A page of a wallet's tMMF positions for all providers: one per fund and chain
        #   the wallet is registered for.
        #
        #   @param next_cursor [String, nil] Cursor of the next page of positions, or null on the last page.
        #
        #   @param positions [Array<Privy::Models::Wallets::TmmfPosition>] A page of the wallet's positions, one per registered fund and chain.
        #
        #   @param wallet_id [String] ID of the Privy wallet holding the positions.
      end
    end
  end
end
