# frozen_string_literal: true

module Privy
  module Models
    class WalletAutomationExecutionListResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Privy::Models::WalletAutomationExecutionResponse>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::WalletAutomationExecutionResponse] }

      # @!attribute next_cursor
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(data:, next_cursor:)
      #   Paginated list of wallet automation executions.
      #
      #   @param data [Array<Privy::Models::WalletAutomationExecutionResponse>]
      #   @param next_cursor [String, nil]
    end
  end
end
