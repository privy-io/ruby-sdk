# typed: strong

module Privy
  module Models
    class KrakenEmbedStartAddressVerificationURLInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedStartAddressVerificationURLInput,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :document_url

      sig do
        returns(
          Privy::KrakenEmbedStartAddressVerificationURLInput::Type::OrSymbol
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

      # Optional best-effort metadata hints for proof of address verification.
      sig { returns(T.nilable(Privy::KrakenEmbedStartAddressMetadata)) }
      attr_reader :metadata

      sig do
        params(
          metadata: T.nilable(Privy::KrakenEmbedStartAddressMetadata::OrHash)
        ).void
      end
      attr_writer :metadata

      # Input payload for starting proof of address verification via URL.
      sig do
        params(
          document_url: String,
          type:
            Privy::KrakenEmbedStartAddressVerificationURLInput::Type::OrSymbol,
          debug: T.nilable(Privy::KrakenEmbedStartVerificationDebug::OrHash),
          metadata: T.nilable(Privy::KrakenEmbedStartAddressMetadata::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        document_url:,
        type:,
        # Debug options for start verification. Only works in non-production environments.
        debug: nil,
        # Optional best-effort metadata hints for proof of address verification.
        metadata: nil
      )
      end

      sig do
        override.returns(
          {
            document_url: String,
            type:
              Privy::KrakenEmbedStartAddressVerificationURLInput::Type::OrSymbol,
            debug: T.nilable(Privy::KrakenEmbedStartVerificationDebug),
            metadata: T.nilable(Privy::KrakenEmbedStartAddressMetadata)
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
              Privy::KrakenEmbedStartAddressVerificationURLInput::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROOF_OF_ADDRESS =
          T.let(
            :proof_of_address,
            Privy::KrakenEmbedStartAddressVerificationURLInput::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedStartAddressVerificationURLInput::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
