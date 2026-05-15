# typed: strong

module Privy
  module Models
    class SiwsUnlinkRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SiwsUnlinkRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      # The request body for unlinking a SIWS ceremony.
      sig { params(address: String).returns(T.attached_class) }
      def self.new(address:)
      end

      sig { override.returns({ address: String }) }
      def to_hash
      end
    end
  end
end
