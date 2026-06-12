# typed: strong

module Privy
  module Models
    class TransferActionResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransferActionResponse, Privy::Internal::AnyHash)
        end

      # The ID of the wallet action.
      sig { returns(String) }
      attr_accessor :id

      # ISO 8601 timestamp of when the wallet action was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Recipient address.
      sig { returns(String) }
      attr_accessor :destination_address

      # Amount received on the destination chain. Set at creation for same-chain
      # transfers. Null until fill confirmation for cross-chain or cross-asset
      # transfers.
      sig { returns(T.nilable(String)) }
      attr_accessor :destination_amount

      # Chain name (e.g. "base", "ethereum").
      sig { returns(String) }
      attr_accessor :source_chain

      # Status of a wallet action.
      sig { returns(Privy::WalletActionStatus::TaggedSymbol) }
      attr_accessor :status

      sig { returns(Privy::TransferActionResponse::Type::TaggedSymbol) }
      attr_accessor :type

      # The ID of the wallet involved in the action.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Destination asset for cross-asset transfers. Omitted for same-asset transfers.
      sig { returns(T.nilable(String)) }
      attr_reader :destination_asset

      sig { params(destination_asset: String).void }
      attr_writer :destination_asset

      # Destination chain for cross-chain transfers. Omitted for same-chain transfers.
      sig { returns(T.nilable(String)) }
      attr_reader :destination_chain

      sig { params(destination_chain: String).void }
      attr_writer :destination_chain

      # Estimated fee breakdown from the provider quote. Only present for cross-chain or
      # cross-asset transfers. Populated after on-chain confirmation.
      sig { returns(T.nilable(T::Array[Privy::FeeLineItem::Variants])) }
      attr_accessor :estimated_fees

      # Gas cost for a blockchain action. Includes both raw base-unit amount and a
      # human-readable decimal string, plus the gas token symbol.
      sig { returns(T.nilable(Privy::Gas)) }
      attr_reader :estimated_gas

      sig { params(estimated_gas: T.nilable(Privy::Gas::OrHash)).void }
      attr_writer :estimated_gas

      # A description of why a wallet action (or a step within a wallet action) failed.
      sig { returns(T.nilable(Privy::FailureReason)) }
      attr_reader :failure_reason

      sig { params(failure_reason: Privy::FailureReason::OrHash).void }
      attr_writer :failure_reason

      # Actual fees paid for the transfer. Populated after on-chain confirmation. Only
      # present for cross-chain transfers.
      sig { returns(T.nilable(T::Array[Privy::FeeLineItem::Variants])) }
      attr_accessor :fees

      # Gas cost for a blockchain action. Includes both raw base-unit amount and a
      # human-readable decimal string, plus the gas token symbol.
      sig { returns(T.nilable(Privy::Gas)) }
      attr_reader :gas

      sig { params(gas: T.nilable(Privy::Gas::OrHash)).void }
      attr_writer :gas

      # Decimal amount sent on the source chain (e.g. "1.5"). Omitted for exact_output
      # cross-chain transfers until the source amount is determined.
      sig { returns(T.nilable(String)) }
      attr_reader :source_amount

      sig { params(source_amount: String).void }
      attr_writer :source_amount

      # Asset identifier (e.g. "usdc", "eth"). Present when the transfer was initiated
      # with a named asset; omitted for custom-token transfers.
      sig { returns(T.nilable(String)) }
      attr_reader :source_asset

      sig { params(source_asset: String).void }
      attr_writer :source_asset

      # Token contract address (EVM) or mint address (Solana). Present when the transfer
      # was initiated with `asset_address`.
      sig { returns(T.nilable(String)) }
      attr_reader :source_asset_address

      sig { params(source_asset_address: String).void }
      attr_writer :source_asset_address

      # Number of decimals for the transferred token. Present when the transfer was
      # initiated with `asset_address` and the decimals were resolved on-chain.
      sig { returns(T.nilable(Integer)) }
      attr_reader :source_asset_decimals

      sig { params(source_asset_decimals: Integer).void }
      attr_writer :source_asset_decimals

      # The steps of the wallet action. Only returned if `?include=steps` is provided.
      sig { returns(T.nilable(T::Array[Privy::WalletActionStep::Variants])) }
      attr_reader :steps

      sig do
        params(
          steps:
            T::Array[
              T.any(
                Privy::EvmTransactionWalletActionStep::OrHash,
                Privy::EvmUserOperationWalletActionStep::OrHash,
                Privy::SvmTransactionWalletActionStep::OrHash,
                Privy::ExternalTransactionWalletActionStep::OrHash,
                Privy::CustodianTransactionWalletActionStep::OrHash
              )
            ]
        ).void
      end
      attr_writer :steps

      # Response for a transfer action.
      sig do
        params(
          id: String,
          created_at: Time,
          destination_address: String,
          destination_amount: T.nilable(String),
          source_chain: String,
          status: Privy::WalletActionStatus::OrSymbol,
          type: Privy::TransferActionResponse::Type::OrSymbol,
          wallet_id: String,
          destination_asset: String,
          destination_chain: String,
          estimated_fees:
            T.nilable(
              T::Array[
                T.any(
                  Privy::RelayerFee::OrHash,
                  Privy::PrivyFee::OrHash,
                  Privy::DeveloperFee::OrHash
                )
              ]
            ),
          estimated_gas: T.nilable(Privy::Gas::OrHash),
          failure_reason: Privy::FailureReason::OrHash,
          fees:
            T.nilable(
              T::Array[
                T.any(
                  Privy::RelayerFee::OrHash,
                  Privy::PrivyFee::OrHash,
                  Privy::DeveloperFee::OrHash
                )
              ]
            ),
          gas: T.nilable(Privy::Gas::OrHash),
          source_amount: String,
          source_asset: String,
          source_asset_address: String,
          source_asset_decimals: Integer,
          steps:
            T::Array[
              T.any(
                Privy::EvmTransactionWalletActionStep::OrHash,
                Privy::EvmUserOperationWalletActionStep::OrHash,
                Privy::SvmTransactionWalletActionStep::OrHash,
                Privy::ExternalTransactionWalletActionStep::OrHash,
                Privy::CustodianTransactionWalletActionStep::OrHash
              )
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the wallet action.
        id:,
        # ISO 8601 timestamp of when the wallet action was created.
        created_at:,
        # Recipient address.
        destination_address:,
        # Amount received on the destination chain. Set at creation for same-chain
        # transfers. Null until fill confirmation for cross-chain or cross-asset
        # transfers.
        destination_amount:,
        # Chain name (e.g. "base", "ethereum").
        source_chain:,
        # Status of a wallet action.
        status:,
        type:,
        # The ID of the wallet involved in the action.
        wallet_id:,
        # Destination asset for cross-asset transfers. Omitted for same-asset transfers.
        destination_asset: nil,
        # Destination chain for cross-chain transfers. Omitted for same-chain transfers.
        destination_chain: nil,
        # Estimated fee breakdown from the provider quote. Only present for cross-chain or
        # cross-asset transfers. Populated after on-chain confirmation.
        estimated_fees: nil,
        # Gas cost for a blockchain action. Includes both raw base-unit amount and a
        # human-readable decimal string, plus the gas token symbol.
        estimated_gas: nil,
        # A description of why a wallet action (or a step within a wallet action) failed.
        failure_reason: nil,
        # Actual fees paid for the transfer. Populated after on-chain confirmation. Only
        # present for cross-chain transfers.
        fees: nil,
        # Gas cost for a blockchain action. Includes both raw base-unit amount and a
        # human-readable decimal string, plus the gas token symbol.
        gas: nil,
        # Decimal amount sent on the source chain (e.g. "1.5"). Omitted for exact_output
        # cross-chain transfers until the source amount is determined.
        source_amount: nil,
        # Asset identifier (e.g. "usdc", "eth"). Present when the transfer was initiated
        # with a named asset; omitted for custom-token transfers.
        source_asset: nil,
        # Token contract address (EVM) or mint address (Solana). Present when the transfer
        # was initiated with `asset_address`.
        source_asset_address: nil,
        # Number of decimals for the transferred token. Present when the transfer was
        # initiated with `asset_address` and the decimals were resolved on-chain.
        source_asset_decimals: nil,
        # The steps of the wallet action. Only returned if `?include=steps` is provided.
        steps: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            destination_address: String,
            destination_amount: T.nilable(String),
            source_chain: String,
            status: Privy::WalletActionStatus::TaggedSymbol,
            type: Privy::TransferActionResponse::Type::TaggedSymbol,
            wallet_id: String,
            destination_asset: String,
            destination_chain: String,
            estimated_fees: T.nilable(T::Array[Privy::FeeLineItem::Variants]),
            estimated_gas: T.nilable(Privy::Gas),
            failure_reason: Privy::FailureReason,
            fees: T.nilable(T::Array[Privy::FeeLineItem::Variants]),
            gas: T.nilable(Privy::Gas),
            source_amount: String,
            source_asset: String,
            source_asset_address: String,
            source_asset_decimals: Integer,
            steps: T::Array[Privy::WalletActionStep::Variants]
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::TransferActionResponse::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSFER =
          T.let(:transfer, Privy::TransferActionResponse::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::TransferActionResponse::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
