# typed: strong

module Privy
  module Models
    class FarcasterInitInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FarcasterInitInput, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      sig { returns(T.nilable(String)) }
      attr_reader :redirect_url

      sig { params(redirect_url: String).void }
      attr_writer :redirect_url

      sig { returns(T.nilable(String)) }
      attr_reader :relying_party

      sig { params(relying_party: String).void }
      attr_writer :relying_party

      # Input for initiating a Farcaster connection.
      sig do
        params(
          token: String,
          redirect_url: String,
          relying_party: String
        ).returns(T.attached_class)
      end
      def self.new(token: nil, redirect_url: nil, relying_party: nil)
      end

      sig do
        override.returns(
          { token: String, redirect_url: String, relying_party: String }
        )
      end
      def to_hash
      end
    end
  end
end
