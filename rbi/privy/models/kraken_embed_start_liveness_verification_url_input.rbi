# typed: strong

module Privy
  module Models
    class KrakenEmbedStartLivenessVerificationURLInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedStartLivenessVerificationURLInput,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :center_url

      sig { returns(String) }
      attr_accessor :left_url

      sig { returns(String) }
      attr_accessor :right_url

      sig do
        returns(
          Privy::KrakenEmbedStartLivenessVerificationURLInput::Type::OrSymbol
        )
      end
      attr_accessor :type

      # Debug options for start verification. Only works in non-production environments.
      sig { returns(T.nilable(Privy::KrakenEmbedStartVerificationDebug)) }
      attr_reader :debug

      sig do
        params(
          debug: T.nilable(Privy::KrakenEmbedStartVerificationDebug::OrHash)
        ).void
      end
      attr_writer :debug

      # Input payload for starting proof of liveness verification via URLs.
      sig do
        params(
          center_url: String,
          left_url: String,
          right_url: String,
          type:
            Privy::KrakenEmbedStartLivenessVerificationURLInput::Type::OrSymbol,
          debug: T.nilable(Privy::KrakenEmbedStartVerificationDebug::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        center_url:,
        left_url:,
        right_url:,
        type:,
        # Debug options for start verification. Only works in non-production environments.
        debug: nil
      )
      end

      sig do
        override.returns(
          {
            center_url: String,
            left_url: String,
            right_url: String,
            type:
              Privy::KrakenEmbedStartLivenessVerificationURLInput::Type::OrSymbol,
            debug: T.nilable(Privy::KrakenEmbedStartVerificationDebug)
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::KrakenEmbedStartLivenessVerificationURLInput::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROOF_OF_LIVENESS =
          T.let(
            :proof_of_liveness,
            Privy::KrakenEmbedStartLivenessVerificationURLInput::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedStartLivenessVerificationURLInput::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
