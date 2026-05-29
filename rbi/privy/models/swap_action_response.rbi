# typed: strong

module Privy
  module Models
    class SwapActionResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SwapActionResponse, Privy::Internal::AnyHash)
        end

      # The ID of the wallet action.
      sig { returns(String) }
      attr_accessor :id

      # CAIP-2 chain identifier for the swap.
      sig { returns(String) }
      attr_accessor :caip2

      # ISO 8601 timestamp of when the wallet action was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Exact base-unit amount of input token. Populated after on-chain confirmation.
      sig { returns(T.nilable(String)) }
      attr_accessor :input_amount

      # Token address or "native" for the token being sold.
      sig { returns(String) }
      attr_accessor :input_token

      # Exact base-unit amount of output token. Populated after on-chain confirmation.
      sig { returns(T.nilable(String)) }
      attr_accessor :output_amount

      # Token address or "native" for the token being bought.
      sig { returns(String) }
      attr_accessor :output_token

      # Status of a wallet action.
      sig { returns(Privy::WalletActionStatus::TaggedSymbol) }
      attr_accessor :status

      sig { returns(Privy::SwapActionResponse::Type::TaggedSymbol) }
      attr_accessor :type

      # The ID of the wallet involved in the action.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Destination chain CAIP-2 identifier. Present for cross-chain swaps.
      sig { returns(T.nilable(String)) }
      attr_reader :destination_caip2

      sig { params(destination_caip2: String).void }
      attr_writer :destination_caip2

      # A description of why a wallet action (or a step within a wallet action) failed.
      sig { returns(T.nilable(Privy::FailureReason)) }
      attr_reader :failure_reason

      sig { params(failure_reason: Privy::FailureReason::OrHash).void }
      attr_writer :failure_reason

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
                Privy::ExternalTransactionWalletActionStep::OrHash
              )
            ]
        ).void
      end
      attr_writer :steps

      # Response for a swap action.
      sig do
        params(
          id: String,
          caip2: String,
          created_at: Time,
          input_amount: T.nilable(String),
          input_token: String,
          output_amount: T.nilable(String),
          output_token: String,
          status: Privy::WalletActionStatus::OrSymbol,
          type: Privy::SwapActionResponse::Type::OrSymbol,
          wallet_id: String,
          destination_caip2: String,
          failure_reason: Privy::FailureReason::OrHash,
          steps:
            T::Array[
              T.any(
                Privy::EvmTransactionWalletActionStep::OrHash,
                Privy::EvmUserOperationWalletActionStep::OrHash,
                Privy::SvmTransactionWalletActionStep::OrHash,
                Privy::ExternalTransactionWalletActionStep::OrHash
              )
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the wallet action.
        id:,
        # CAIP-2 chain identifier for the swap.
        caip2:,
        # ISO 8601 timestamp of when the wallet action was created.
        created_at:,
        # Exact base-unit amount of input token. Populated after on-chain confirmation.
        input_amount:,
        # Token address or "native" for the token being sold.
        input_token:,
        # Exact base-unit amount of output token. Populated after on-chain confirmation.
        output_amount:,
        # Token address or "native" for the token being bought.
        output_token:,
        # Status of a wallet action.
        status:,
        type:,
        # The ID of the wallet involved in the action.
        wallet_id:,
        # Destination chain CAIP-2 identifier. Present for cross-chain swaps.
        destination_caip2: nil,
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
            caip2: String,
            created_at: Time,
            input_amount: T.nilable(String),
            input_token: String,
            output_amount: T.nilable(String),
            output_token: String,
            status: Privy::WalletActionStatus::TaggedSymbol,
            type: Privy::SwapActionResponse::Type::TaggedSymbol,
            wallet_id: String,
            destination_caip2: String,
            failure_reason: Privy::FailureReason,
            steps: T::Array[Privy::WalletActionStep::Variants]
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::SwapActionResponse::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SWAP = T.let(:swap, Privy::SwapActionResponse::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::SwapActionResponse::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
