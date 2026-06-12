# typed: strong

module Privy
  module Models
    class AccessListEntry < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::AccessListEntry, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :address

      sig { returns(T::Array[String]) }
      attr_accessor :storage_keys

      # An entry in an EIP-2930 access list, specifying an address and its storage keys.
      sig do
        params(address: String, storage_keys: T::Array[String]).returns(
          T.attached_class
        )
      end
      def self.new(address:, storage_keys:)
      end

      sig do
        override.returns({ address: String, storage_keys: T::Array[String] })
      end
      def to_hash
      end
    end
  end
end
