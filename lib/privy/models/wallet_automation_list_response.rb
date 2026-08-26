# frozen_string_literal: true

module Privy
  module Models
    class WalletAutomationListResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Privy::Models::WalletAutomationResponse>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::WalletAutomationResponse] }

      # @!attribute next_cursor
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(data:, next_cursor:)
      #   Paginated list of wallet automations.
      #
      #   @param data [Array<Privy::Models::WalletAutomationResponse>]
      #   @param next_cursor [String, nil]
    end
  end
end
