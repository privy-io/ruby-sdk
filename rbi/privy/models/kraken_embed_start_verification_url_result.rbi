# typed: strong

module Privy
  module Models
    class KrakenEmbedStartVerificationURLResult < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedStartVerificationURLResult,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :verification_id

      # Result payload for start verification URL response.
      sig { params(verification_id: String).returns(T.attached_class) }
      def self.new(verification_id:)
      end

      sig { override.returns({ verification_id: String }) }
      def to_hash
      end
    end
  end
end
