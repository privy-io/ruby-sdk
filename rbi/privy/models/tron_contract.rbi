# typed: strong

module Privy
  module Models
    # A Tron contract, discriminated by type. Supported types: TransferContract,
    # TriggerSmartContract.
    module TronContract
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(Privy::TronTransferContract, Privy::TronTriggerSmartContract)
        end

      sig { override.returns(T::Array[Privy::TronContract::Variants]) }
      def self.variants
      end
    end
  end
end
