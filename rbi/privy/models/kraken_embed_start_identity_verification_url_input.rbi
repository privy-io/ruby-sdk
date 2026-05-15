# typed: strong

module Privy
  module Models
    class KrakenEmbedStartIdentityVerificationURLInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedStartIdentityVerificationURLInput,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :front_url

      sig do
        returns(
          Privy::KrakenEmbedStartIdentityVerificationURLInput::Type::OrSymbol
        )
      end
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_accessor :back_url

      # Debug options for start verification. Only works in non-production environments.
      sig do
        returns(
          T.nilable(Privy::KrakenEmbedStartIdentityVerificationURLInput::Debug)
        )
      end
      attr_reader :debug

      sig do
        params(
          debug:
            Privy::KrakenEmbedStartIdentityVerificationURLInput::Debug::OrHash
        ).void
      end
      attr_writer :debug

      # Optional best-effort metadata hints for proof of identity verification.
      sig do
        returns(
          T.nilable(
            Privy::KrakenEmbedStartIdentityVerificationURLInput::Metadata
          )
        )
      end
      attr_reader :metadata

      sig do
        params(
          metadata:
            Privy::KrakenEmbedStartIdentityVerificationURLInput::Metadata::OrHash
        ).void
      end
      attr_writer :metadata

      # Input payload for starting proof of identity verification via URLs.
      sig do
        params(
          front_url: String,
          type:
            Privy::KrakenEmbedStartIdentityVerificationURLInput::Type::OrSymbol,
          back_url: T.nilable(String),
          debug:
            Privy::KrakenEmbedStartIdentityVerificationURLInput::Debug::OrHash,
          metadata:
            Privy::KrakenEmbedStartIdentityVerificationURLInput::Metadata::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        front_url:,
        type:,
        back_url: nil,
        # Debug options for start verification. Only works in non-production environments.
        debug: nil,
        # Optional best-effort metadata hints for proof of identity verification.
        metadata: nil
      )
      end

      sig do
        override.returns(
          {
            front_url: String,
            type:
              Privy::KrakenEmbedStartIdentityVerificationURLInput::Type::OrSymbol,
            back_url: T.nilable(String),
            debug: Privy::KrakenEmbedStartIdentityVerificationURLInput::Debug,
            metadata:
              Privy::KrakenEmbedStartIdentityVerificationURLInput::Metadata
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
              Privy::KrakenEmbedStartIdentityVerificationURLInput::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROOF_OF_IDENTITY =
          T.let(
            :proof_of_identity,
            Privy::KrakenEmbedStartIdentityVerificationURLInput::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedStartIdentityVerificationURLInput::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Debug < Privy::Models::KrakenEmbedStartVerificationDebug
        OrHash =
          T.type_alias do
            T.any(
              Privy::KrakenEmbedStartIdentityVerificationURLInput::Debug,
              Privy::Internal::AnyHash
            )
          end

        # Debug options for start verification. Only works in non-production environments.
        sig { returns(T.attached_class) }
        def self.new
        end

        sig { override.returns({}) }
        def to_hash
        end
      end

      class Metadata < Privy::Models::KrakenEmbedStartIdentityMetadata
        OrHash =
          T.type_alias do
            T.any(
              Privy::KrakenEmbedStartIdentityVerificationURLInput::Metadata,
              Privy::Internal::AnyHash
            )
          end

        # Optional best-effort metadata hints for proof of identity verification.
        sig { returns(T.attached_class) }
        def self.new
        end

        sig { override.returns({}) }
        def to_hash
        end
      end
    end
  end
end
