# typed: strong

module Privy
  module Models
    module Wallets
      class EarnWithdrawActionResponse < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::EarnWithdrawActionResponse,
              Privy::Internal::AnyHash
            )
          end

        # The ID of the wallet action.
        sig { returns(String) }
        attr_accessor :id

        # Underlying asset token address.
        sig { returns(String) }
        attr_accessor :asset_address

        # CAIP-2 chain identifier.
        sig { returns(String) }
        attr_accessor :caip2

        # ISO 8601 timestamp of when the wallet action was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # Base-unit amount of asset withdrawn (e.g. "1500000").
        sig { returns(String) }
        attr_accessor :raw_amount

        # Vault shares burned in base units. Populated after on-chain confirmation.
        sig { returns(T.nilable(String)) }
        attr_accessor :share_amount

        # Status of a wallet action.
        sig { returns(Privy::Wallets::WalletActionStatus::TaggedSymbol) }
        attr_accessor :status

        sig do
          returns(
            Privy::Wallets::EarnWithdrawActionResponse::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # ERC-4626 vault contract address.
        sig { returns(String) }
        attr_accessor :vault_address

        # The vault ID.
        sig { returns(String) }
        attr_accessor :vault_id

        # The ID of the wallet involved in the action.
        sig { returns(String) }
        attr_accessor :wallet_id

        # Human-readable decimal amount of asset withdrawn (e.g. "1.5"). Only present when
        # the token is known in the asset registry.
        sig { returns(T.nilable(String)) }
        attr_reader :amount

        sig { params(amount: String).void }
        attr_writer :amount

        # Asset identifier (e.g. "usdc", "eth"). Only present when the token is known in
        # the asset registry.
        sig { returns(T.nilable(String)) }
        attr_reader :asset

        sig { params(asset: String).void }
        attr_writer :asset

        # Number of decimals for the underlying asset (e.g. 6 for USDC, 18 for ETH). Only
        # present when the token is known in the asset registry.
        sig { returns(T.nilable(Integer)) }
        attr_reader :decimals

        sig { params(decimals: Integer).void }
        attr_writer :decimals

        # A description of why a wallet action (or a step within a wallet action) failed.
        sig { returns(T.nilable(Privy::Wallets::FailureReason)) }
        attr_reader :failure_reason

        sig do
          params(failure_reason: Privy::Wallets::FailureReason::OrHash).void
        end
        attr_writer :failure_reason

        # The steps of the wallet action. Only returned if `?include=steps` is provided.
        sig do
          returns(
            T.nilable(T::Array[Privy::Wallets::WalletActionStep::Variants])
          )
        end
        attr_reader :steps

        sig do
          params(
            steps:
              T::Array[
                T.any(
                  Privy::Wallets::EvmTransactionWalletActionStep::OrHash,
                  Privy::Wallets::EvmUserOperationWalletActionStep::OrHash,
                  Privy::Wallets::SvmTransactionWalletActionStep::OrHash,
                  Privy::Wallets::TvmTransactionWalletActionStep::OrHash,
                  Privy::Wallets::ExternalTransactionWalletActionStep::OrHash,
                  Privy::Wallets::CustodianTransactionWalletActionStep::OrHash
                )
              ]
          ).void
        end
        attr_writer :steps

        # Response for an earn withdraw action.
        sig do
          params(
            id: String,
            asset_address: String,
            caip2: String,
            created_at: Time,
            raw_amount: String,
            share_amount: T.nilable(String),
            status: Privy::Wallets::WalletActionStatus::OrSymbol,
            type: Privy::Wallets::EarnWithdrawActionResponse::Type::OrSymbol,
            vault_address: String,
            vault_id: String,
            wallet_id: String,
            amount: String,
            asset: String,
            decimals: Integer,
            failure_reason: Privy::Wallets::FailureReason::OrHash,
            steps:
              T::Array[
                T.any(
                  Privy::Wallets::EvmTransactionWalletActionStep::OrHash,
                  Privy::Wallets::EvmUserOperationWalletActionStep::OrHash,
                  Privy::Wallets::SvmTransactionWalletActionStep::OrHash,
                  Privy::Wallets::TvmTransactionWalletActionStep::OrHash,
                  Privy::Wallets::ExternalTransactionWalletActionStep::OrHash,
                  Privy::Wallets::CustodianTransactionWalletActionStep::OrHash
                )
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the wallet action.
          id:,
          # Underlying asset token address.
          asset_address:,
          # CAIP-2 chain identifier.
          caip2:,
          # ISO 8601 timestamp of when the wallet action was created.
          created_at:,
          # Base-unit amount of asset withdrawn (e.g. "1500000").
          raw_amount:,
          # Vault shares burned in base units. Populated after on-chain confirmation.
          share_amount:,
          # Status of a wallet action.
          status:,
          type:,
          # ERC-4626 vault contract address.
          vault_address:,
          # The vault ID.
          vault_id:,
          # The ID of the wallet involved in the action.
          wallet_id:,
          # Human-readable decimal amount of asset withdrawn (e.g. "1.5"). Only present when
          # the token is known in the asset registry.
          amount: nil,
          # Asset identifier (e.g. "usdc", "eth"). Only present when the token is known in
          # the asset registry.
          asset: nil,
          # Number of decimals for the underlying asset (e.g. 6 for USDC, 18 for ETH). Only
          # present when the token is known in the asset registry.
          decimals: nil,
          # A description of why a wallet action (or a step within a wallet action) failed.
          failure_reason: nil,
          # The steps of the wallet action. Only returned if `?include=steps` is provided.
          steps: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              asset_address: String,
              caip2: String,
              created_at: Time,
              raw_amount: String,
              share_amount: T.nilable(String),
              status: Privy::Wallets::WalletActionStatus::TaggedSymbol,
              type:
                Privy::Wallets::EarnWithdrawActionResponse::Type::TaggedSymbol,
              vault_address: String,
              vault_id: String,
              wallet_id: String,
              amount: String,
              asset: String,
              decimals: Integer,
              failure_reason: Privy::Wallets::FailureReason,
              steps: T::Array[Privy::Wallets::WalletActionStep::Variants]
            }
          )
        end
        def to_hash
        end

        module Type
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Privy::Wallets::EarnWithdrawActionResponse::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EARN_WITHDRAW =
            T.let(
              :earn_withdraw,
              Privy::Wallets::EarnWithdrawActionResponse::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::Wallets::EarnWithdrawActionResponse::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
