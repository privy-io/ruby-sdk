# typed: strong

module Privy
  module Models
    class OAuthVerifyResponseBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OAuthVerifyResponseBody, Privy::Internal::AnyHash)
        end

      sig { returns(T::Boolean) }
      attr_accessor :verified

      # The response body when verifying a PRAT.
      sig { params(verified: T::Boolean).returns(T.attached_class) }
      def self.new(verified:)
      end

      sig { override.returns({ verified: T::Boolean }) }
      def to_hash
      end
    end
  end
end
