# frozen_string_literal: true

module Privy
  module Models
    class TransferReceivedTransactionDetail < Privy::Internal::Type::BaseModel
      # @!attribute asset
      #
      #   @return [Symbol, String, Privy::Models::TransferReceivedTransactionDetail::Asset]
      required :asset, union: -> { Privy::TransferReceivedTransactionDetail::Asset }

      # @!attribute chain
      #   Supported blockchain network names for wallet balance and transaction queries.
      #
      #   @return [Symbol, Privy::Models::WalletAssetChainNameInput]
      required :chain, enum: -> { Privy::WalletAssetChainNameInput }

      # @!attribute display_values
      #
      #   @return [Hash{Symbol=>String}]
      required :display_values, Privy::Internal::Type::HashOf[String]

      # @!attribute raw_value
      #
      #   @return [String]
      required :raw_value, String

      # @!attribute raw_value_decimals
      #
      #   @return [Float]
      required :raw_value_decimals, Float

      # @!attribute recipient
      #
      #   @return [String]
      required :recipient, String

      # @!attribute recipient_privy_user_id
      #
      #   @return [String, nil]
      required :recipient_privy_user_id, String, nil?: true

      # @!attribute sender
      #
      #   @return [String]
      required :sender, String

      # @!attribute sender_privy_user_id
      #
      #   @return [String, nil]
      required :sender_privy_user_id, String, nil?: true

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::TransferReceivedTransactionDetail::Type]
      required :type, enum: -> { Privy::TransferReceivedTransactionDetail::Type }

      # @!method initialize(asset:, chain:, display_values:, raw_value:, raw_value_decimals:, recipient:, recipient_privy_user_id:, sender:, sender_privy_user_id:, type:)
      #   Details for a received transfer transaction.
      #
      #   @param asset [Symbol, String, Privy::Models::TransferReceivedTransactionDetail::Asset]
      #
      #   @param chain [Symbol, Privy::Models::WalletAssetChainNameInput] Supported blockchain network names for wallet balance and transaction queries.
      #
      #   @param display_values [Hash{Symbol=>String}]
      #
      #   @param raw_value [String]
      #
      #   @param raw_value_decimals [Float]
      #
      #   @param recipient [String]
      #
      #   @param recipient_privy_user_id [String, nil]
      #
      #   @param sender [String]
      #
      #   @param sender_privy_user_id [String, nil]
      #
      #   @param type [Symbol, Privy::Models::TransferReceivedTransactionDetail::Type]

      # @see Privy::Models::TransferReceivedTransactionDetail#asset
      module Asset
        extend Privy::Internal::Type::Union

        variant const: -> { Privy::Models::TransferReceivedTransactionDetail::Asset::USDC }

        variant const: -> { Privy::Models::TransferReceivedTransactionDetail::Asset::USDC_E }

        variant const: -> { Privy::Models::TransferReceivedTransactionDetail::Asset::ETH }

        variant const: -> { Privy::Models::TransferReceivedTransactionDetail::Asset::AVAX }

        variant const: -> { Privy::Models::TransferReceivedTransactionDetail::Asset::POL }

        variant const: -> { Privy::Models::TransferReceivedTransactionDetail::Asset::BNB }

        variant const: -> { Privy::Models::TransferReceivedTransactionDetail::Asset::USDT }

        variant const: -> { Privy::Models::TransferReceivedTransactionDetail::Asset::EURC }

        variant const: -> { Privy::Models::TransferReceivedTransactionDetail::Asset::USDB }

        variant const: -> { Privy::Models::TransferReceivedTransactionDetail::Asset::PATHUSD }

        variant const: -> { Privy::Models::TransferReceivedTransactionDetail::Asset::SOL }

        variant const: -> { Privy::Models::TransferReceivedTransactionDetail::Asset::TRX }

        variant String

        # @!method self.variants
        #   @return [Array(Symbol, String)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(Privy::TransferReceivedTransactionDetail::Asset::TaggedSymbol, String) }
        end

        # @!group

        USDC = :usdc
        USDC_E = :"usdc.e"
        ETH = :eth
        AVAX = :avax
        POL = :pol
        BNB = :bnb
        USDT = :usdt
        EURC = :eurc
        USDB = :usdb
        PATHUSD = :pathusd
        SOL = :sol
        TRX = :trx

        # @!endgroup
      end

      # @see Privy::Models::TransferReceivedTransactionDetail#type
      module Type
        extend Privy::Internal::Type::Enum

        TRANSFER_RECEIVED = :transfer_received

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
