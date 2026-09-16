# typed: strong

module Privy
  module Models
    class CryptoDepositAccountChain < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CryptoDepositAccountChain, Privy::Internal::AnyHash)
        end

      # EVM CAIP-2 chain identifier (e.g. "eip155:4217" for Tempo, "eip155:1" for
      # Ethereum).
      sig { returns(String) }
      attr_accessor :caip2

      # Numeric chain id used by some clients as an alias.
      sig { returns(Integer) }
      attr_accessor :chain_id

      sig { returns(String) }
      attr_accessor :display_name

      # URL of the chain icon.
      sig { returns(String) }
      attr_accessor :icon_url

      # Execution VM, e.g. evm or svm.
      sig { returns(String) }
      attr_accessor :vm_type

      # Chain metadata for rendering the crypto deposit-account source picker.
      sig do
        params(
          caip2: String,
          chain_id: Integer,
          display_name: String,
          icon_url: String,
          vm_type: String
        ).returns(T.attached_class)
      end
      def self.new(
        # EVM CAIP-2 chain identifier (e.g. "eip155:4217" for Tempo, "eip155:1" for
        # Ethereum).
        caip2:,
        # Numeric chain id used by some clients as an alias.
        chain_id:,
        display_name:,
        # URL of the chain icon.
        icon_url:,
        # Execution VM, e.g. evm or svm.
        vm_type:
      )
      end

      sig do
        override.returns(
          {
            caip2: String,
            chain_id: Integer,
            display_name: String,
            icon_url: String,
            vm_type: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
