# typed: strong

module Privy
  module Models
    class CardIssuingMerchant < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CardIssuingMerchant, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Merchant metadata for card activity.
      sig { params(name: T.nilable(String)).returns(T.attached_class) }
      def self.new(name:)
      end

      sig { override.returns({ name: T.nilable(String) }) }
      def to_hash
      end
    end
  end
end
