# frozen_string_literal: true

module Privy
  module Models
    class BridgeFiatDepositMetadata < Privy::Internal::Type::BaseModel
      # @!attribute activity_id
      #
      #   @return [String]
      required :activity_id, String

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::BridgeFiatDepositMetadata::Method]
      required :method_, enum: -> { Privy::BridgeFiatDepositMetadata::Method }, api_name: :method

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::BridgeFiatDepositMetadata::Type]
      required :type, enum: -> { Privy::BridgeFiatDepositMetadata::Type }

      # @!attribute virtual_account_id
      #
      #   @return [String]
      required :virtual_account_id, String

      # @!method initialize(activity_id:, method_:, type:, virtual_account_id:)
      #   Bridge metadata for a fiat deposit via virtual account.
      #
      #   @param activity_id [String]
      #   @param method_ [Symbol, Privy::Models::BridgeFiatDepositMetadata::Method]
      #   @param type [Symbol, Privy::Models::BridgeFiatDepositMetadata::Type]
      #   @param virtual_account_id [String]

      # @see Privy::Models::BridgeFiatDepositMetadata#method_
      module Method
        extend Privy::Internal::Type::Enum

        VIRTUAL_ACCOUNT = :virtual_account

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::BridgeFiatDepositMetadata#type
      module Type
        extend Privy::Internal::Type::Enum

        FIAT_DEPOSIT = :fiat_deposit

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
