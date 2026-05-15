# typed: strong

module Privy
  module Models
    class OAuthVerifyRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OAuthVerifyRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :prat

      # The request body for verifying a PRAT.
      sig { params(prat: String).returns(T.attached_class) }
      def self.new(prat:)
      end

      sig { override.returns({ prat: String }) }
      def to_hash
      end
    end
  end
end
