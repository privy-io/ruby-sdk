# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCustomOrderOccurrence < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedCustomOrderOccurrence::Status]
      required :status, enum: -> { Privy::KrakenEmbedCustomOrderOccurrence::Status }

      # @!attribute trigger
      #   Trigger metadata for a custom order occurrence.
      #
      #   @return [Privy::Models::KrakenEmbedCustomOrderOccurrenceTrigger]
      required :trigger, -> { Privy::KrakenEmbedCustomOrderOccurrenceTrigger }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute executed_action
      #   Executed action details for a custom order occurrence.
      #
      #   @return [Privy::Models::KrakenEmbedCustomOrderOccurrence::ExecutedAction, nil]
      optional :executed_action, -> { Privy::KrakenEmbedCustomOrderOccurrence::ExecutedAction }

      # @!attribute failure_reason
      #
      #   @return [String, nil]
      optional :failure_reason, String

      # @!attribute skip_reason
      #
      #   @return [String, nil]
      optional :skip_reason, String

      # @!method initialize(id:, created_at:, status:, trigger:, updated_at:, executed_action: nil, failure_reason: nil, skip_reason: nil)
      #   A single execution occurrence of a custom order.
      #
      #   @param id [String]
      #
      #   @param created_at [Time]
      #
      #   @param status [Symbol, Privy::Models::KrakenEmbedCustomOrderOccurrence::Status]
      #
      #   @param trigger [Privy::Models::KrakenEmbedCustomOrderOccurrenceTrigger] Trigger metadata for a custom order occurrence.
      #
      #   @param updated_at [Time]
      #
      #   @param executed_action [Privy::Models::KrakenEmbedCustomOrderOccurrence::ExecutedAction] Executed action details for a custom order occurrence.
      #
      #   @param failure_reason [String]
      #
      #   @param skip_reason [String]

      # @see Privy::Models::KrakenEmbedCustomOrderOccurrence#status
      module Status
        extend Privy::Internal::Type::Enum

        SUCCESS = :success
        FAILURE = :failure
        SKIPPED = :skipped

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::KrakenEmbedCustomOrderOccurrence#executed_action
      class ExecutedAction < Privy::Models::KrakenEmbedCustomOrderOccurrenceExecutedAction
        # @!method initialize
        #   Executed action details for a custom order occurrence.
      end
    end
  end
end
