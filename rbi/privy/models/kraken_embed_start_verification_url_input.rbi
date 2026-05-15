# typed: strong

module Privy
  module Models
    # Discriminated union of all start verification URL input types.
    module KrakenEmbedStartVerificationURLInput
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedStartIdentityVerificationURLInput,
            Privy::KrakenEmbedStartAddressVerificationURLInput,
            Privy::KrakenEmbedStartLivenessVerificationURLInput
          )
        end

      sig do
        override.returns(
          T::Array[Privy::KrakenEmbedStartVerificationURLInput::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
