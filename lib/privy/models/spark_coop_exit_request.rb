# frozen_string_literal: true

module Privy
  module Models
    class SparkCoopExitRequest < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute coop_exit_txid
      #
      #   @return [String]
      required :coop_exit_txid, String

      # @!attribute created_at
      #
      #   @return [String]
      required :created_at, String

      # @!attribute expires_at
      #
      #   @return [String]
      required :expires_at, String

      # @!attribute fee
      #   A currency amount with its original value and unit.
      #
      #   @return [Privy::Models::SparkCurrencyAmount]
      required :fee, -> { Privy::SparkCurrencyAmount }

      # @!attribute l1_broadcast_fee
      #   A currency amount with its original value and unit.
      #
      #   @return [Privy::Models::SparkCurrencyAmount]
      required :l1_broadcast_fee, -> { Privy::SparkCurrencyAmount }

      # @!attribute network
      #
      #   @return [String]
      required :network, String

      # @!attribute status
      #
      #   @return [String]
      required :status, String

      # @!attribute updated_at
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute exit_speed
      #   The exit speed for a cooperative withdrawal from Spark to L1.
      #
      #   @return [Symbol, Privy::Models::SparkExitSpeed, nil]
      optional :exit_speed, enum: -> { Privy::SparkExitSpeed }

      # @!attribute fee_quote_id
      #
      #   @return [String, nil]
      optional :fee_quote_id, String

      # @!method initialize(id:, coop_exit_txid:, created_at:, expires_at:, fee:, l1_broadcast_fee:, network:, status:, updated_at:, exit_speed: nil, fee_quote_id: nil)
      #   A cooperative exit request from Spark to Bitcoin L1.
      #
      #   @param id [String]
      #
      #   @param coop_exit_txid [String]
      #
      #   @param created_at [String]
      #
      #   @param expires_at [String]
      #
      #   @param fee [Privy::Models::SparkCurrencyAmount] A currency amount with its original value and unit.
      #
      #   @param l1_broadcast_fee [Privy::Models::SparkCurrencyAmount] A currency amount with its original value and unit.
      #
      #   @param network [String]
      #
      #   @param status [String]
      #
      #   @param updated_at [String]
      #
      #   @param exit_speed [Symbol, Privy::Models::SparkExitSpeed] The exit speed for a cooperative withdrawal from Spark to L1.
      #
      #   @param fee_quote_id [String]
    end
  end
end
