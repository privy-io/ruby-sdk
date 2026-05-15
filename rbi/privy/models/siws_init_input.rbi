# typed: strong

module Privy
  module Models
    class SiwsInitInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::SiwsInitInput, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :address

      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      # Input for initiating a SIWS ceremony.
      sig { params(address: String, token: String).returns(T.attached_class) }
      def self.new(address:, token: nil)
      end

      sig { override.returns({ address: String, token: String }) }
      def to_hash
      end
    end
  end
end
