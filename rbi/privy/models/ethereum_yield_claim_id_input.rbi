# typed: strong

module Privy
  module Models
    class EthereumYieldClaimIDInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumYieldClaimIDInput, Privy::Internal::AnyHash)
        end

      # The yield claim transaction ID.
      sig { returns(String) }
      attr_accessor :id

      # Input for fetching a yield reward claim by ID.
      sig { params(id: String).returns(T.attached_class) }
      def self.new(
        # The yield claim transaction ID.
        id:
      )
      end

      sig { override.returns({ id: String }) }
      def to_hash
      end
    end
  end
end
