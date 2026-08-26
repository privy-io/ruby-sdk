# typed: strong

module Privy
  module Models
    class DepositStartedData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::DepositStartedData, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :created_at

      # The crypto asset and chain the fiat deposit is being converted into.
      sig { returns(Privy::DepositStartedDestination) }
      attr_reader :destination

      sig { params(destination: Privy::DepositStartedDestination::OrHash).void }
      attr_writer :destination

      # The fiat deposit that was received, including amount, currency, and originator.
      sig { returns(Privy::DepositStartedSource) }
      attr_reader :source

      sig { params(source: Privy::DepositStartedSource::OrHash).void }
      attr_writer :source

      # Details of a fiat deposit that has begun processing into a deposit account.
      sig do
        params(
          created_at: String,
          destination: Privy::DepositStartedDestination::OrHash,
          source: Privy::DepositStartedSource::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        created_at:,
        # The crypto asset and chain the fiat deposit is being converted into.
        destination:,
        # The fiat deposit that was received, including amount, currency, and originator.
        source:
      )
      end

      sig do
        override.returns(
          {
            created_at: String,
            destination: Privy::DepositStartedDestination,
            source: Privy::DepositStartedSource
          }
        )
      end
      def to_hash
      end
    end
  end
end
