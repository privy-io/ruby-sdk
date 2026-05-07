# typed: strong

module Privy
  module Models
    class RecoveryKeyMaterialInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::RecoveryKeyMaterialInput, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :chain_type

      sig { params(chain_type: String).void }
      attr_writer :chain_type

      # The input for getting the recovery key material.
      sig { params(chain_type: String).returns(T.attached_class) }
      def self.new(chain_type: nil)
      end

      sig { override.returns({ chain_type: String }) }
      def to_hash
      end
    end
  end
end
