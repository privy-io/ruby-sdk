# typed: strong

module Privy
  module Models
    class StripeVerification < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::StripeVerification, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :status

      # A verification entry on a CryptoCustomer.
      sig { params(name: String, status: String).returns(T.attached_class) }
      def self.new(name:, status:)
      end

      sig { override.returns({ name: String, status: String }) }
      def to_hash
      end
    end
  end
end
