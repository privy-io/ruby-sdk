# typed: strong

module Privy
  module Models
    class SiwsAddressInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SiwsAddressInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      # Input containing a SIWS wallet address.
      sig { params(address: String).returns(T.attached_class) }
      def self.new(address:)
      end

      sig { override.returns({ address: String }) }
      def to_hash
      end
    end
  end
end
