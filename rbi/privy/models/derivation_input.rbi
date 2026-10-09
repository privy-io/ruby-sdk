# typed: strong

module Privy
  module Models
    class DerivationInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::DerivationInput, Privy::Internal::AnyHash) }

      # ID of the HD root wallet to derive the new wallet from.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Derives the new wallet from an existing HD root wallet so both share one seed
      # phrase.
      sig { params(wallet_id: String).returns(T.attached_class) }
      def self.new(
        # ID of the HD root wallet to derive the new wallet from.
        wallet_id:
      )
      end

      sig { override.returns({ wallet_id: String }) }
      def to_hash
      end
    end
  end
end
