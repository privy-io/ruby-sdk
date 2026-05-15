# typed: strong

module Privy
  module Models
    class WalletRevokeResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletRevokeResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :message

      # The response body from revoking a wallet delegation.
      sig { params(message: String).returns(T.attached_class) }
      def self.new(message:)
      end

      sig { override.returns({ message: String }) }
      def to_hash
      end
    end
  end
end
