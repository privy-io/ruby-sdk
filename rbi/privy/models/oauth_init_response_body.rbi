# typed: strong

module Privy
  module Models
    class OAuthInitResponseBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OAuthInitResponseBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :url

      # The response for initiating an OAuth ceremony.
      sig { params(url: String).returns(T.attached_class) }
      def self.new(url:)
      end

      sig { override.returns({ url: String }) }
      def to_hash
      end
    end
  end
end
