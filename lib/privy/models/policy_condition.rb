# frozen_string_literal: true

module Privy
  module Models
    # A condition that must be true for the rule action to be applied.
    module PolicyCondition
      extend Privy::Internal::Type::Union

      discriminator :field_source

      # The verbatim Ethereum transaction object in an eth_signTransaction or eth_sendTransaction request.
      variant :ethereum_transaction, -> { Privy::EthereumTransactionCondition }

      # The decoded calldata in a smart contract interaction as the smart contract method's parameters. Note that 'ethereum_calldata' conditions must contain an abi parameter with the JSON ABI of the smart contract.
      variant :ethereum_calldata, -> { Privy::EthereumCalldataCondition }

      # Attributes from the signing domain that will verify the signature.
      variant :ethereum_typed_data_domain, -> { Privy::EthereumTypedDataDomainCondition }

      # 'types' and 'primary_type' attributes of the TypedData JSON object defined in EIP-712.
      variant :ethereum_typed_data_message, -> { Privy::EthereumTypedDataMessageCondition }

      # Allowed contract addresses for eth_sign7702Authorization requests.
      variant :ethereum_7702_authorization, -> { Privy::Ethereum7702AuthorizationCondition }

      # A Tempo (type 118) transaction-level field. Evaluated once per transaction (not per call).
      variant :tempo_transaction, -> { Privy::TempoTransactionCondition }

      # Solana Program attributes, enables allowlisting Solana Programs.
      variant :solana_program_instruction, -> { Privy::SolanaProgramInstructionCondition }

      # Solana System Program attributes, including more granular Transfer instruction fields.
      variant :solana_system_program_instruction, -> { Privy::SolanaSystemProgramInstructionCondition }

      # Solana Token Program attributes, including more granular TransferChecked instruction fields.
      variant :solana_token_program_instruction, -> { Privy::SolanaTokenProgramInstructionCondition }

      # System attributes, including current unix timestamp (in seconds).
      variant :system, -> { Privy::SystemCondition }

      # TRON transaction fields for TransferContract and TriggerSmartContract transaction types.
      variant :tron_transaction, -> { Privy::TronTransactionCondition }

      # Decoded calldata from a TRON TriggerSmartContract interaction.
      variant :tron_trigger_smart_contract_data, -> { Privy::TronCalldataCondition }

      # SUI transaction command attributes, enables allowlisting specific command types. Allowed commands: 'TransferObjects', 'SplitCoins', 'MergeCoins'. Only 'eq' and 'in' operators are supported.
      variant :sui_transaction_command, -> { Privy::SuiTransactionCommandCondition }

      # SUI TransferObjects command attributes, including recipient and amount fields.
      variant :sui_transfer_objects_command, -> { Privy::SuiTransferObjectsCommandCondition }

      # Condition on the original wallet action API request body fields.
      variant :action_request_body, -> { Privy::ActionRequestBodyCondition }

      # Condition referencing an aggregation value. The field must start with "aggregation." followed by the aggregation ID.
      variant :reference, -> { Privy::AggregationCondition }

      # Condition on the message being signed (e.g. in personal_sign).
      variant :message, -> { Privy::MessageSigningCondition }

      # @!method self.variants
      #   @return [Array(Privy::Models::EthereumTransactionCondition, Privy::Models::EthereumCalldataCondition, Privy::Models::EthereumTypedDataDomainCondition, Privy::Models::EthereumTypedDataMessageCondition, Privy::Models::Ethereum7702AuthorizationCondition, Privy::Models::TempoTransactionCondition, Privy::Models::SolanaProgramInstructionCondition, Privy::Models::SolanaSystemProgramInstructionCondition, Privy::Models::SolanaTokenProgramInstructionCondition, Privy::Models::SystemCondition, Privy::Models::TronTransactionCondition, Privy::Models::TronCalldataCondition, Privy::Models::SuiTransactionCommandCondition, Privy::Models::SuiTransferObjectsCommandCondition, Privy::Models::ActionRequestBodyCondition, Privy::Models::AggregationCondition, Privy::Models::MessageSigningCondition)]
    end
  end
end
