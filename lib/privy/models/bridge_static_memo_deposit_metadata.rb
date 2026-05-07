# frozen_string_literal: true

module Privy
  module Models
    class BridgeStaticMemoDepositMetadata < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::BridgeStaticMemoDepositMetadata::Method]
      required :method_, enum: -> { Privy::BridgeStaticMemoDepositMetadata::Method }, api_name: :method

      # @!attribute static_memo_event_id
      #
      #   @return [String]
      required :static_memo_event_id, String

      # @!attribute static_memo_id
      #
      #   @return [String]
      required :static_memo_id, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::BridgeStaticMemoDepositMetadata::Type]
      required :type, enum: -> { Privy::BridgeStaticMemoDepositMetadata::Type }

      # @!method initialize(method_:, static_memo_event_id:, static_memo_id:, type:)
      #   Bridge metadata for a fiat deposit via static memo.
      #
      #   @param method_ [Symbol, Privy::Models::BridgeStaticMemoDepositMetadata::Method]
      #   @param static_memo_event_id [String]
      #   @param static_memo_id [String]
      #   @param type [Symbol, Privy::Models::BridgeStaticMemoDepositMetadata::Type]

      # @see Privy::Models::BridgeStaticMemoDepositMetadata#method_
      module Method
        extend Privy::Internal::Type::Enum

        STATIC_MEMO = :static_memo

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::BridgeStaticMemoDepositMetadata#type
      module Type
        extend Privy::Internal::Type::Enum

        FIAT_DEPOSIT = :fiat_deposit

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
