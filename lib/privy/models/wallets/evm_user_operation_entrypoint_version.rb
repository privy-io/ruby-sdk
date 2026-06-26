# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # The ERC-4337 entrypoint contract version used by the user operation.
      module EvmUserOperationEntrypointVersion
        extend Privy::Internal::Type::Enum

        EVM_USER_OPERATION_ENTRYPOINT_VERSION_0_6 = :"0.6"
        EVM_USER_OPERATION_ENTRYPOINT_VERSION_0_7 = :"0.7"
        EVM_USER_OPERATION_ENTRYPOINT_VERSION_0_8 = :"0.8"
        EVM_USER_OPERATION_ENTRYPOINT_VERSION_0_9 = :"0.9"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
