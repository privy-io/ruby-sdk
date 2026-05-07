# typed: strong

module Privy
  module Models
    # The owner of the resource, specified as a Privy user ID, a P-256 public key, or
    # null to remove the current owner.
    module OwnerInput
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(Privy::OwnerInputUser, Privy::OwnerInputPublicKey)
        end

      sig { override.returns(T::Array[Privy::OwnerInput::Variants]) }
      def self.variants
      end
    end
  end
end
