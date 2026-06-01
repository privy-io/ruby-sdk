# typed: strong

module Privy
  module Models
    class StripePaymentToken < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::StripePaymentToken, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :type

      # A saved payment token.
      sig { params(id: String, type: String).returns(T.attached_class) }
      def self.new(id:, type:)
      end

      sig { override.returns({ id: String, type: String }) }
      def to_hash
      end
    end
  end
end
