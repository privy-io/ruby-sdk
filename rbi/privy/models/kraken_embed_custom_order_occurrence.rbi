# typed: strong

module Privy
  module Models
    class KrakenEmbedCustomOrderOccurrence < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedCustomOrderOccurrence,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Privy::KrakenEmbedCustomOrderOccurrence::Status::OrSymbol) }
      attr_accessor :status

      # Trigger metadata for a custom order occurrence.
      sig { returns(Privy::KrakenEmbedCustomOrderOccurrenceTrigger) }
      attr_reader :trigger

      sig do
        params(
          trigger: Privy::KrakenEmbedCustomOrderOccurrenceTrigger::OrHash
        ).void
      end
      attr_writer :trigger

      sig { returns(Time) }
      attr_accessor :updated_at

      # Executed action details for a custom order occurrence.
      sig do
        returns(
          T.nilable(Privy::KrakenEmbedCustomOrderOccurrenceExecutedAction)
        )
      end
      attr_reader :executed_action

      sig do
        params(
          executed_action:
            T.nilable(
              Privy::KrakenEmbedCustomOrderOccurrenceExecutedAction::OrHash
            )
        ).void
      end
      attr_writer :executed_action

      sig { returns(T.nilable(String)) }
      attr_reader :failure_reason

      sig { params(failure_reason: String).void }
      attr_writer :failure_reason

      sig { returns(T.nilable(String)) }
      attr_reader :skip_reason

      sig { params(skip_reason: String).void }
      attr_writer :skip_reason

      # A single execution occurrence of a custom order.
      sig do
        params(
          id: String,
          created_at: Time,
          status: Privy::KrakenEmbedCustomOrderOccurrence::Status::OrSymbol,
          trigger: Privy::KrakenEmbedCustomOrderOccurrenceTrigger::OrHash,
          updated_at: Time,
          executed_action:
            T.nilable(
              Privy::KrakenEmbedCustomOrderOccurrenceExecutedAction::OrHash
            ),
          failure_reason: String,
          skip_reason: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        status:,
        # Trigger metadata for a custom order occurrence.
        trigger:,
        updated_at:,
        # Executed action details for a custom order occurrence.
        executed_action: nil,
        failure_reason: nil,
        skip_reason: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            status: Privy::KrakenEmbedCustomOrderOccurrence::Status::OrSymbol,
            trigger: Privy::KrakenEmbedCustomOrderOccurrenceTrigger,
            updated_at: Time,
            executed_action:
              T.nilable(Privy::KrakenEmbedCustomOrderOccurrenceExecutedAction),
            failure_reason: String,
            skip_reason: String
          }
        )
      end
      def to_hash
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::KrakenEmbedCustomOrderOccurrence::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUCCESS =
          T.let(
            :success,
            Privy::KrakenEmbedCustomOrderOccurrence::Status::TaggedSymbol
          )
        FAILURE =
          T.let(
            :failure,
            Privy::KrakenEmbedCustomOrderOccurrence::Status::TaggedSymbol
          )
        SKIPPED =
          T.let(
            :skipped,
            Privy::KrakenEmbedCustomOrderOccurrence::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedCustomOrderOccurrence::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
