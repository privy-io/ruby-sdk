# typed: strong

module Privy
  module Models
    module Wallets
      # The ERC-4337 entrypoint contract version used by the user operation.
      module EvmUserOperationEntrypointVersion
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::Wallets::EvmUserOperationEntrypointVersion)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EVM_USER_OPERATION_ENTRYPOINT_VERSION_0_6 =
          T.let(
            :"0.6",
            Privy::Wallets::EvmUserOperationEntrypointVersion::TaggedSymbol
          )
        EVM_USER_OPERATION_ENTRYPOINT_VERSION_0_7 =
          T.let(
            :"0.7",
            Privy::Wallets::EvmUserOperationEntrypointVersion::TaggedSymbol
          )
        EVM_USER_OPERATION_ENTRYPOINT_VERSION_0_8 =
          T.let(
            :"0.8",
            Privy::Wallets::EvmUserOperationEntrypointVersion::TaggedSymbol
          )
        EVM_USER_OPERATION_ENTRYPOINT_VERSION_0_9 =
          T.let(
            :"0.9",
            Privy::Wallets::EvmUserOperationEntrypointVersion::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::Wallets::EvmUserOperationEntrypointVersion::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
