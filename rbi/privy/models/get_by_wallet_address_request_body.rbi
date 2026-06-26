# typed: strong

module Privy
  module Models
    class GetByWalletAddressRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::GetByWalletAddressRequestBody, Privy::Internal::AnyHash)
        end

      # A blockchain wallet address. Ethereum addresses are normalized to EIP-55
      # checksum format. Solana addresses are validated as base58. All other chain
      # addresses (Stellar, Tron, Sui, Aptos, etc.) are accepted as-is.
      sig { returns(String) }
      attr_accessor :address

      # Include archived wallets in lookup. Defaults to false (archived wallets return
      # 404).
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_archived

      sig { params(include_archived: T::Boolean).void }
      attr_writer :include_archived

      # Request body for looking up a wallet by its blockchain address.
      sig do
        params(address: String, include_archived: T::Boolean).returns(
          T.attached_class
        )
      end
      def self.new(
        # A blockchain wallet address. Ethereum addresses are normalized to EIP-55
        # checksum format. Solana addresses are validated as base58. All other chain
        # addresses (Stellar, Tron, Sui, Aptos, etc.) are accepted as-is.
        address:,
        # Include archived wallets in lookup. Defaults to false (archived wallets return
        # 404).
        include_archived: nil
      )
      end

      sig do
        override.returns({ address: String, include_archived: T::Boolean })
      end
      def to_hash
      end
    end
  end
end
