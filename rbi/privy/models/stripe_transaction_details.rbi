# typed: strong

module Privy
  module Models
    class StripeTransactionDetails < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::StripeTransactionDetails, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :last_error

      # Transaction details from checkout.
      sig { params(last_error: T.nilable(String)).returns(T.attached_class) }
      def self.new(last_error: nil)
      end

      sig { override.returns({ last_error: T.nilable(String) }) }
      def to_hash
      end
    end
  end
end
