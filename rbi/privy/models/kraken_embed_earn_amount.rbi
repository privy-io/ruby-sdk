# typed: strong

module Privy
  module Models
    class KrakenEmbedEarnAmount < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KrakenEmbedEarnAmount, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :converted

      sig { returns(String) }
      attr_accessor :native

      # An earn amount with native and converted values.
      sig do
        params(converted: String, native: String).returns(T.attached_class)
      end
      def self.new(converted:, native:)
      end

      sig { override.returns({ converted: String, native: String }) }
      def to_hash
      end
    end
  end
end
