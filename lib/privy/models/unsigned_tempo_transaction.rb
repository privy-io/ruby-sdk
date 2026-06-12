# frozen_string_literal: true

module Privy
  module Models
    class UnsignedTempoTransaction < Privy::Internal::Type::BaseModel
      # @!attribute calls
      #
      #   @return [Array<Privy::Models::TempoCall>]
      required :calls, -> { Privy::Internal::Type::ArrayOf[Privy::TempoCall] }

      # @!attribute type
      #
      #   @return [Float, Privy::Models::UnsignedTempoTransaction::Type]
      required :type, enum: -> { Privy::UnsignedTempoTransaction::Type }

      # @!attribute aa_authorization_list
      #
      #   @return [Array<Privy::Models::TempoAaAuthorization>, nil]
      optional :aa_authorization_list, -> { Privy::Internal::Type::ArrayOf[Privy::TempoAaAuthorization] }

      # @!attribute access_list
      #
      #   @return [Array<Privy::Models::AccessListEntry>, nil]
      optional :access_list, -> { Privy::Internal::Type::ArrayOf[Privy::AccessListEntry] }

      # @!attribute chain_id
      #   A quantity value that can be either a hex string starting with '0x' or a
      #   non-negative integer.
      #
      #   @return [String, Integer, nil]
      optional :chain_id, union: -> { Privy::Quantity }

      # @!attribute fee_payer_signature
      #   A fee payer signature for sponsored Tempo transactions (secp256k1 only).
      #
      #   @return [Privy::Models::TempoFeePayerSignature, nil]
      optional :fee_payer_signature, -> { Privy::TempoFeePayerSignature }

      # @!attribute fee_token
      #
      #   @return [String, nil]
      optional :fee_token, String

      # @!attribute from
      #
      #   @return [String, nil]
      optional :from, String

      # @!attribute gas_limit
      #   A quantity value that can be either a hex string starting with '0x' or a
      #   non-negative integer.
      #
      #   @return [String, Integer, nil]
      optional :gas_limit, union: -> { Privy::Quantity }

      # @!attribute max_fee_per_gas
      #   A quantity value that can be either a hex string starting with '0x' or a
      #   non-negative integer.
      #
      #   @return [String, Integer, nil]
      optional :max_fee_per_gas, union: -> { Privy::Quantity }

      # @!attribute max_priority_fee_per_gas
      #   A quantity value that can be either a hex string starting with '0x' or a
      #   non-negative integer.
      #
      #   @return [String, Integer, nil]
      optional :max_priority_fee_per_gas, union: -> { Privy::Quantity }

      # @!attribute nonce
      #   A quantity value that can be either a hex string starting with '0x' or a
      #   non-negative integer.
      #
      #   @return [String, Integer, nil]
      optional :nonce, union: -> { Privy::Quantity }

      # @!attribute nonce_key
      #   A quantity value that can be either a hex string starting with '0x' or a
      #   non-negative integer.
      #
      #   @return [String, Integer, nil]
      optional :nonce_key, union: -> { Privy::Quantity }

      # @!attribute valid_after
      #   A quantity value that can be either a hex string starting with '0x' or a
      #   non-negative integer.
      #
      #   @return [String, Integer, nil]
      optional :valid_after, union: -> { Privy::Quantity }

      # @!attribute valid_before
      #   A quantity value that can be either a hex string starting with '0x' or a
      #   non-negative integer.
      #
      #   @return [String, Integer, nil]
      optional :valid_before, union: -> { Privy::Quantity }

      # @!method initialize(calls:, type:, aa_authorization_list: nil, access_list: nil, chain_id: nil, fee_payer_signature: nil, fee_token: nil, from: nil, gas_limit: nil, max_fee_per_gas: nil, max_priority_fee_per_gas: nil, nonce: nil, nonce_key: nil, valid_after: nil, valid_before: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::UnsignedTempoTransaction} for more details.
      #
      #   An unsigned Tempo transaction (type 118) with batched calls.
      #
      #   @param calls [Array<Privy::Models::TempoCall>]
      #
      #   @param type [Float, Privy::Models::UnsignedTempoTransaction::Type]
      #
      #   @param aa_authorization_list [Array<Privy::Models::TempoAaAuthorization>]
      #
      #   @param access_list [Array<Privy::Models::AccessListEntry>]
      #
      #   @param chain_id [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg
      #
      #   @param fee_payer_signature [Privy::Models::TempoFeePayerSignature] A fee payer signature for sponsored Tempo transactions (secp256k1 only).
      #
      #   @param fee_token [String]
      #
      #   @param from [String]
      #
      #   @param gas_limit [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg
      #
      #   @param max_fee_per_gas [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg
      #
      #   @param max_priority_fee_per_gas [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg
      #
      #   @param nonce [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg
      #
      #   @param nonce_key [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg
      #
      #   @param valid_after [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg
      #
      #   @param valid_before [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg

      # @see Privy::Models::UnsignedTempoTransaction#type
      module Type
        extend Privy::Internal::Type::Enum

        TYPE_118 = 118

        # @!method self.values
        #   @return [Array<Float>]
      end
    end
  end
end
