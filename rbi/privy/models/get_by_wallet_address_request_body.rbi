# typed: strong

module Privy
  module Models
    class GetByWalletAddressRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::GetByWalletAddressRequestBody, Privy::Internal::AnyHash)
        end

      # A blockchain wallet address (Ethereum or Solana).
      sig { returns(String) }
      attr_accessor :address

      # Request body for looking up a wallet by its blockchain address.
      sig { params(address: String).returns(T.attached_class) }
      def self.new(
        # A blockchain wallet address (Ethereum or Solana).
        address:
      )
      end

      sig { override.returns({ address: String }) }
      def to_hash
      end
    end
  end
end
