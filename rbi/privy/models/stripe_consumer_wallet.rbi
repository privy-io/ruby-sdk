# typed: strong

module Privy
  module Models
    class StripeConsumerWallet < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::StripeConsumerWallet, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :network

      sig { returns(String) }
      attr_accessor :wallet_address

      # A registered consumer wallet.
      sig do
        params(id: String, network: String, wallet_address: String).returns(
          T.attached_class
        )
      end
      def self.new(id:, network:, wallet_address:)
      end

      sig do
        override.returns(
          { id: String, network: String, wallet_address: String }
        )
      end
      def to_hash
      end
    end
  end
end
