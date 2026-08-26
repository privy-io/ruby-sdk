# typed: strong

module Privy
  module Models
    class DepositFailedData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::DepositFailedData, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :created_at

      # The crypto asset and chain the fiat deposit is being converted into.
      sig { returns(Privy::DepositStartedDestination) }
      attr_reader :destination

      sig { params(destination: Privy::DepositStartedDestination::OrHash).void }
      attr_writer :destination

      sig { returns(String) }
      attr_accessor :reason

      sig { returns(String) }
      attr_accessor :reason_code

      sig { returns(String) }
      attr_accessor :refunded_at

      # The fiat deposit that was received, including amount, currency, and originator.
      sig { returns(Privy::DepositStartedSource) }
      attr_reader :source

      sig { params(source: Privy::DepositStartedSource::OrHash).void }
      attr_writer :source

      # Details of a fiat deposit that failed to convert and was refunded to the sender.
      sig do
        params(
          created_at: String,
          destination: Privy::DepositStartedDestination::OrHash,
          reason: String,
          reason_code: String,
          refunded_at: String,
          source: Privy::DepositStartedSource::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        created_at:,
        # The crypto asset and chain the fiat deposit is being converted into.
        destination:,
        reason:,
        reason_code:,
        refunded_at:,
        # The fiat deposit that was received, including amount, currency, and originator.
        source:
      )
      end

      sig do
        override.returns(
          {
            created_at: String,
            destination: Privy::DepositStartedDestination,
            reason: String,
            reason_code: String,
            refunded_at: String,
            source: Privy::DepositStartedSource
          }
        )
      end
      def to_hash
      end
    end
  end
end
