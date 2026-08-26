# typed: strong

module Privy
  module Models
    class DepositCompletedData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::DepositCompletedData, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :created_at

      # The crypto asset, chain, delivered amount, and settlement transaction for a
      # completed deposit.
      sig { returns(Privy::DepositCompletedDestination) }
      attr_reader :destination

      sig do
        params(destination: Privy::DepositCompletedDestination::OrHash).void
      end
      attr_writer :destination

      # The fiat deposit that was received, including amount, currency, and originator.
      sig { returns(Privy::DepositStartedSource) }
      attr_reader :source

      sig { params(source: Privy::DepositStartedSource::OrHash).void }
      attr_writer :source

      # Details of a fiat deposit that has finished converting and been delivered to the
      # wallet.
      sig do
        params(
          created_at: String,
          destination: Privy::DepositCompletedDestination::OrHash,
          source: Privy::DepositStartedSource::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        created_at:,
        # The crypto asset, chain, delivered amount, and settlement transaction for a
        # completed deposit.
        destination:,
        # The fiat deposit that was received, including amount, currency, and originator.
        source:
      )
      end

      sig do
        override.returns(
          {
            created_at: String,
            destination: Privy::DepositCompletedDestination,
            source: Privy::DepositStartedSource
          }
        )
      end
      def to_hash
      end
    end
  end
end
