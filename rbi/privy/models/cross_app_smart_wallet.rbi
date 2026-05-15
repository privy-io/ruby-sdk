# typed: strong

module Privy
  module Models
    class CrossAppSmartWallet < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CrossAppSmartWallet, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      # A smart wallet associated with a cross-app account.
      sig { params(address: String).returns(T.attached_class) }
      def self.new(address:)
      end

      sig { override.returns({ address: String }) }
      def to_hash
      end
    end
  end
end
