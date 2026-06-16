# typed: strong

module Privy
  module Models
    class AdvancedSwapRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AdvancedSwapRequestBody, Privy::Internal::AnyHash)
        end

      # Amount in the smallest unit of the input token (e.g. lamports for SOL).
      sig { returns(String) }
      attr_accessor :amount

      # Input token address (base58 mint address).
      sig { returns(String) }
      attr_accessor :input_token

      # Output token address (base58 mint address).
      sig { returns(String) }
      attr_accessor :output_token

      # CAIP-2 chain identifier. Defaults to Solana mainnet.
      sig { returns(T.nilable(String)) }
      attr_reader :caip2

      sig { params(caip2: String).void }
      attr_writer :caip2

      # When true, skip transaction submission (quote + sign only). The signed
      # transaction is still returned.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :dry_run

      sig { params(dry_run: T::Boolean).void }
      attr_writer :dry_run

      # Token account (base58) to receive the platform fee. Must exist on-chain for the
      # output token.
      sig { returns(T.nilable(String)) }
      attr_reader :fee_recipient

      sig { params(fee_recipient: String).void }
      attr_writer :fee_recipient

      # Platform fee in basis points, taken from the output token. Requires
      # fee_recipient when > 0.
      sig { returns(T.nilable(Integer)) }
      attr_reader :platform_fee_bps

      sig { params(platform_fee_bps: Integer).void }
      attr_writer :platform_fee_bps

      # Max slippage tolerance in basis points (0-10000), or "auto" for
      # provider-determined. Defaults to "auto".
      sig do
        returns(
          T.nilable(
            T.any(
              Integer,
              Privy::AdvancedSwapRequestBody::SlippageBps::OrSymbol
            )
          )
        )
      end
      attr_reader :slippage_bps

      sig do
        params(
          slippage_bps:
            T.any(
              Integer,
              Privy::AdvancedSwapRequestBody::SlippageBps::OrSymbol
            )
        ).void
      end
      attr_writer :slippage_bps

      # Request body for initiating a synchronous Solana token swap through an embedded
      # wallet.
      sig do
        params(
          amount: String,
          input_token: String,
          output_token: String,
          caip2: String,
          dry_run: T::Boolean,
          fee_recipient: String,
          platform_fee_bps: Integer,
          slippage_bps:
            T.any(
              Integer,
              Privy::AdvancedSwapRequestBody::SlippageBps::OrSymbol
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # Amount in the smallest unit of the input token (e.g. lamports for SOL).
        amount:,
        # Input token address (base58 mint address).
        input_token:,
        # Output token address (base58 mint address).
        output_token:,
        # CAIP-2 chain identifier. Defaults to Solana mainnet.
        caip2: nil,
        # When true, skip transaction submission (quote + sign only). The signed
        # transaction is still returned.
        dry_run: nil,
        # Token account (base58) to receive the platform fee. Must exist on-chain for the
        # output token.
        fee_recipient: nil,
        # Platform fee in basis points, taken from the output token. Requires
        # fee_recipient when > 0.
        platform_fee_bps: nil,
        # Max slippage tolerance in basis points (0-10000), or "auto" for
        # provider-determined. Defaults to "auto".
        slippage_bps: nil
      )
      end

      sig do
        override.returns(
          {
            amount: String,
            input_token: String,
            output_token: String,
            caip2: String,
            dry_run: T::Boolean,
            fee_recipient: String,
            platform_fee_bps: Integer,
            slippage_bps:
              T.any(
                Integer,
                Privy::AdvancedSwapRequestBody::SlippageBps::OrSymbol
              )
          }
        )
      end
      def to_hash
      end

      # Max slippage tolerance in basis points (0-10000), or "auto" for
      # provider-determined. Defaults to "auto".
      module SlippageBps
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Integer,
              Privy::AdvancedSwapRequestBody::SlippageBps::TaggedSymbol
            )
          end

        sig do
          override.returns(
            T::Array[Privy::AdvancedSwapRequestBody::SlippageBps::Variants]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::AdvancedSwapRequestBody::SlippageBps)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTO =
          T.let(
            :auto,
            Privy::AdvancedSwapRequestBody::SlippageBps::TaggedSymbol
          )
      end
    end
  end
end
