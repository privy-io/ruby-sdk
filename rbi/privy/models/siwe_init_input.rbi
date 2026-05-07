# typed: strong

module Privy
  module Models
    class SiweInitInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::SiweInitInput, Privy::Internal::AnyHash) }

      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      sig { returns(T.nilable(String)) }
      attr_reader :address

      sig { params(address: String).void }
      attr_writer :address

      # Input for initiating a SIWE ceremony.
      sig { params(token: String, address: String).returns(T.attached_class) }
      def self.new(token: nil, address: nil)
      end

      sig { override.returns({ token: String, address: String }) }
      def to_hash
      end
    end
  end
end
