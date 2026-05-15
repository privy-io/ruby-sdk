# typed: strong

module Privy
  module Models
    class KrakenEmbedStartVerificationDebug < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedStartVerificationDebug,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Privy::KrakenEmbedStartVerificationDebug::Outcome::OrSymbol)
        )
      end
      attr_accessor :outcome

      # Debug options for start verification. Only works in non-production environments.
      sig do
        params(
          outcome:
            T.nilable(
              Privy::KrakenEmbedStartVerificationDebug::Outcome::OrSymbol
            )
        ).returns(T.attached_class)
      end
      def self.new(outcome: nil)
      end

      sig do
        override.returns(
          {
            outcome:
              T.nilable(
                Privy::KrakenEmbedStartVerificationDebug::Outcome::OrSymbol
              )
          }
        )
      end
      def to_hash
      end

      module Outcome
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::KrakenEmbedStartVerificationDebug::Outcome)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FAILED =
          T.let(
            :failed,
            Privy::KrakenEmbedStartVerificationDebug::Outcome::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedStartVerificationDebug::Outcome::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
