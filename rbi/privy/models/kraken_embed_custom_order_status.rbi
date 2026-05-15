# typed: strong

module Privy
  module Models
    class KrakenEmbedCustomOrderStatus < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KrakenEmbedCustomOrderStatus, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::KrakenEmbedCustomOrderStatus::Status::OrSymbol) }
      attr_accessor :status

      sig { returns(T.nilable(T.anything)) }
      attr_reader :reason

      sig { params(reason: T.anything).void }
      attr_writer :reason

      # Custom order status with optional reason for cancelled or paused states.
      sig do
        params(
          status: Privy::KrakenEmbedCustomOrderStatus::Status::OrSymbol,
          reason: T.anything
        ).returns(T.attached_class)
      end
      def self.new(status:, reason: nil)
      end

      sig do
        override.returns(
          {
            status: Privy::KrakenEmbedCustomOrderStatus::Status::OrSymbol,
            reason: T.anything
          }
        )
      end
      def to_hash
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::KrakenEmbedCustomOrderStatus::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            Privy::KrakenEmbedCustomOrderStatus::Status::TaggedSymbol
          )
        COMPLETED =
          T.let(
            :completed,
            Privy::KrakenEmbedCustomOrderStatus::Status::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :cancelled,
            Privy::KrakenEmbedCustomOrderStatus::Status::TaggedSymbol
          )
        PAUSED =
          T.let(
            :paused,
            Privy::KrakenEmbedCustomOrderStatus::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::KrakenEmbedCustomOrderStatus::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
