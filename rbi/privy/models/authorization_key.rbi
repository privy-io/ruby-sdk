# typed: strong

module Privy
  module Models
    class AuthorizationKey < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AuthorizationKey, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :display_name

      sig { returns(String) }
      attr_accessor :public_key

      # A public key authorized to sign on a key quorum.
      sig do
        params(display_name: T.nilable(String), public_key: String).returns(
          T.attached_class
        )
      end
      def self.new(display_name:, public_key:)
      end

      sig do
        override.returns(
          { display_name: T.nilable(String), public_key: String }
        )
      end
      def to_hash
      end
    end
  end
end
