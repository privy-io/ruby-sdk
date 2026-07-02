# frozen_string_literal: true

module Privy
  module Models
    class SparkCoopExitFeeQuote < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [String]
      required :created_at, String

      # @!attribute expires_at
      #
      #   @return [String]
      required :expires_at, String

      # @!attribute l1_broadcast_fee_fast
      #   A currency amount with its original value and unit.
      #
      #   @return [Privy::Models::SparkCurrencyAmount]
      required :l1_broadcast_fee_fast, -> { Privy::SparkCurrencyAmount }

      # @!attribute l1_broadcast_fee_medium
      #   A currency amount with its original value and unit.
      #
      #   @return [Privy::Models::SparkCurrencyAmount]
      required :l1_broadcast_fee_medium, -> { Privy::SparkCurrencyAmount }

      # @!attribute l1_broadcast_fee_slow
      #   A currency amount with its original value and unit.
      #
      #   @return [Privy::Models::SparkCurrencyAmount]
      required :l1_broadcast_fee_slow, -> { Privy::SparkCurrencyAmount }

      # @!attribute network
      #
      #   @return [String]
      required :network, String

      # @!attribute total_amount
      #   A currency amount with its original value and unit.
      #
      #   @return [Privy::Models::SparkCurrencyAmount]
      required :total_amount, -> { Privy::SparkCurrencyAmount }

      # @!attribute updated_at
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute user_fee_fast
      #   A currency amount with its original value and unit.
      #
      #   @return [Privy::Models::SparkCurrencyAmount]
      required :user_fee_fast, -> { Privy::SparkCurrencyAmount }

      # @!attribute user_fee_medium
      #   A currency amount with its original value and unit.
      #
      #   @return [Privy::Models::SparkCurrencyAmount]
      required :user_fee_medium, -> { Privy::SparkCurrencyAmount }

      # @!attribute user_fee_slow
      #   A currency amount with its original value and unit.
      #
      #   @return [Privy::Models::SparkCurrencyAmount]
      required :user_fee_slow, -> { Privy::SparkCurrencyAmount }

      # @!method initialize(id:, created_at:, expires_at:, l1_broadcast_fee_fast:, l1_broadcast_fee_medium:, l1_broadcast_fee_slow:, network:, total_amount:, updated_at:, user_fee_fast:, user_fee_medium:, user_fee_slow:)
      #   A fee quote for a cooperative exit from Spark to Bitcoin L1.
      #
      #   @param id [String]
      #
      #   @param created_at [String]
      #
      #   @param expires_at [String]
      #
      #   @param l1_broadcast_fee_fast [Privy::Models::SparkCurrencyAmount] A currency amount with its original value and unit.
      #
      #   @param l1_broadcast_fee_medium [Privy::Models::SparkCurrencyAmount] A currency amount with its original value and unit.
      #
      #   @param l1_broadcast_fee_slow [Privy::Models::SparkCurrencyAmount] A currency amount with its original value and unit.
      #
      #   @param network [String]
      #
      #   @param total_amount [Privy::Models::SparkCurrencyAmount] A currency amount with its original value and unit.
      #
      #   @param updated_at [String]
      #
      #   @param user_fee_fast [Privy::Models::SparkCurrencyAmount] A currency amount with its original value and unit.
      #
      #   @param user_fee_medium [Privy::Models::SparkCurrencyAmount] A currency amount with its original value and unit.
      #
      #   @param user_fee_slow [Privy::Models::SparkCurrencyAmount] A currency amount with its original value and unit.
    end
  end
end
