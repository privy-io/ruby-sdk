# typed: strong

module Privy
  module Models
    class KrakenEmbedToggleAutoEarnQueryParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedToggleAutoEarnQueryParams,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Boolean) }
      attr_accessor :want_enabled

      # Query parameters for toggling Auto-Earn.
      sig { params(want_enabled: T::Boolean).returns(T.attached_class) }
      def self.new(want_enabled:)
      end

      sig { override.returns({ want_enabled: T::Boolean }) }
      def to_hash
      end
    end
  end
end
