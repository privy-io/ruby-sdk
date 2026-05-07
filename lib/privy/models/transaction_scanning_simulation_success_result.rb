# frozen_string_literal: true

module Privy
  module Models
    class TransactionScanningSimulationSuccessResult < Privy::Internal::Type::BaseModel
      # @!attribute assets_diffs
      #
      #   @return [Array<Privy::Models::TransactionScanningAssetDiff>]
      required :assets_diffs, -> { Privy::Internal::Type::ArrayOf[Privy::TransactionScanningAssetDiff] }

      # @!attribute exposures
      #
      #   @return [Array<Privy::Models::TransactionScanningExposure>]
      required :exposures, -> { Privy::Internal::Type::ArrayOf[Privy::TransactionScanningExposure] }

      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::TransactionScanningSimulationSuccessResult::Status]
      required :status, enum: -> { Privy::TransactionScanningSimulationSuccessResult::Status }

      # @!attribute params
      #   The parameters of the scanned transaction.
      #
      #   @return [Privy::Models::TransactionScanningParams, nil]
      optional :params, -> { Privy::TransactionScanningParams }

      # @!method initialize(assets_diffs:, exposures:, status:, params: nil)
      #   A successful simulation result from a transaction scan.
      #
      #   @param assets_diffs [Array<Privy::Models::TransactionScanningAssetDiff>]
      #
      #   @param exposures [Array<Privy::Models::TransactionScanningExposure>]
      #
      #   @param status [Symbol, Privy::Models::TransactionScanningSimulationSuccessResult::Status]
      #
      #   @param params [Privy::Models::TransactionScanningParams] The parameters of the scanned transaction.

      # @see Privy::Models::TransactionScanningSimulationSuccessResult#status
      module Status
        extend Privy::Internal::Type::Enum

        SUCCESS = :Success

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
