# typed: strong

module Privy
  module Models
    class TronTransferContract < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TronTransferContract, Privy::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :amount

      # Tron address in hex format: 41-prefixed, 42 hex characters (21 bytes), no 0x
      # prefix.
      sig { returns(String) }
      attr_accessor :owner_address

      # Tron address in hex format: 41-prefixed, 42 hex characters (21 bytes), no 0x
      # prefix.
      sig { returns(String) }
      attr_accessor :to_address

      sig { returns(Privy::TronTransferContract::Type::OrSymbol) }
      attr_accessor :type

      # Tron native TRX transfer contract.
      sig do
        params(
          amount: Integer,
          owner_address: String,
          to_address: String,
          type: Privy::TronTransferContract::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        amount:,
        # Tron address in hex format: 41-prefixed, 42 hex characters (21 bytes), no 0x
        # prefix.
        owner_address:,
        # Tron address in hex format: 41-prefixed, 42 hex characters (21 bytes), no 0x
        # prefix.
        to_address:,
        type:
      )
      end

      sig do
        override.returns(
          {
            amount: Integer,
            owner_address: String,
            to_address: String,
            type: Privy::TronTransferContract::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::TronTransferContract::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSFER_CONTRACT =
          T.let(
            :TransferContract,
            Privy::TronTransferContract::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::TronTransferContract::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
