# typed: strong

module Privy
  module Models
    class EthereumYieldSweepIDInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumYieldSweepIDInput, Privy::Internal::AnyHash)
        end

      # The yield sweep ID.
      sig { returns(String) }
      attr_accessor :id

      # Input for fetching a yield sweep by ID.
      sig { params(id: String).returns(T.attached_class) }
      def self.new(
        # The yield sweep ID.
        id:
      )
      end

      sig { override.returns({ id: String }) }
      def to_hash
      end
    end
  end
end
