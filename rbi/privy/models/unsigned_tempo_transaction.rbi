# typed: strong

module Privy
  module Models
    class UnsignedTempoTransaction < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::UnsignedTempoTransaction, Privy::Internal::AnyHash)
        end

      sig { returns(T::Array[Privy::TempoCall]) }
      attr_accessor :calls

      sig { returns(Privy::UnsignedTempoTransaction::Type::OrFloat) }
      attr_accessor :type

      sig { returns(T.nilable(T::Array[Privy::TempoAaAuthorization])) }
      attr_reader :aa_authorization_list

      sig do
        params(
          aa_authorization_list: T::Array[Privy::TempoAaAuthorization::OrHash]
        ).void
      end
      attr_writer :aa_authorization_list

      sig { returns(T.nilable(T::Array[Privy::AccessListEntry])) }
      attr_reader :access_list

      sig { params(access_list: T::Array[Privy::AccessListEntry::OrHash]).void }
      attr_writer :access_list

      # A quantity value that can be either a hex string starting with '0x' or a
      # non-negative integer.
      sig { returns(T.nilable(Privy::Quantity::Variants)) }
      attr_reader :chain_id

      sig { params(chain_id: Privy::Quantity::Variants).void }
      attr_writer :chain_id

      # A fee payer signature for sponsored Tempo transactions (secp256k1 only).
      sig { returns(T.nilable(Privy::TempoFeePayerSignature)) }
      attr_reader :fee_payer_signature

      sig do
        params(fee_payer_signature: Privy::TempoFeePayerSignature::OrHash).void
      end
      attr_writer :fee_payer_signature

      sig { returns(T.nilable(String)) }
      attr_reader :fee_token

      sig { params(fee_token: String).void }
      attr_writer :fee_token

      sig { returns(T.nilable(String)) }
      attr_reader :from

      sig { params(from: String).void }
      attr_writer :from

      # A quantity value that can be either a hex string starting with '0x' or a
      # non-negative integer.
      sig { returns(T.nilable(Privy::Quantity::Variants)) }
      attr_reader :gas_limit

      sig { params(gas_limit: Privy::Quantity::Variants).void }
      attr_writer :gas_limit

      # A quantity value that can be either a hex string starting with '0x' or a
      # non-negative integer.
      sig { returns(T.nilable(Privy::Quantity::Variants)) }
      attr_reader :max_fee_per_gas

      sig { params(max_fee_per_gas: Privy::Quantity::Variants).void }
      attr_writer :max_fee_per_gas

      # A quantity value that can be either a hex string starting with '0x' or a
      # non-negative integer.
      sig { returns(T.nilable(Privy::Quantity::Variants)) }
      attr_reader :max_priority_fee_per_gas

      sig { params(max_priority_fee_per_gas: Privy::Quantity::Variants).void }
      attr_writer :max_priority_fee_per_gas

      # A quantity value that can be either a hex string starting with '0x' or a
      # non-negative integer.
      sig { returns(T.nilable(Privy::Quantity::Variants)) }
      attr_reader :nonce

      sig { params(nonce: Privy::Quantity::Variants).void }
      attr_writer :nonce

      # A quantity value that can be either a hex string starting with '0x' or a
      # non-negative integer.
      sig { returns(T.nilable(Privy::Quantity::Variants)) }
      attr_reader :nonce_key

      sig { params(nonce_key: Privy::Quantity::Variants).void }
      attr_writer :nonce_key

      # A quantity value that can be either a hex string starting with '0x' or a
      # non-negative integer.
      sig { returns(T.nilable(Privy::Quantity::Variants)) }
      attr_reader :valid_after

      sig { params(valid_after: Privy::Quantity::Variants).void }
      attr_writer :valid_after

      # A quantity value that can be either a hex string starting with '0x' or a
      # non-negative integer.
      sig { returns(T.nilable(Privy::Quantity::Variants)) }
      attr_reader :valid_before

      sig { params(valid_before: Privy::Quantity::Variants).void }
      attr_writer :valid_before

      # An unsigned Tempo transaction (type 118) with batched calls.
      sig do
        params(
          calls: T::Array[Privy::TempoCall::OrHash],
          type: Privy::UnsignedTempoTransaction::Type::OrFloat,
          aa_authorization_list: T::Array[Privy::TempoAaAuthorization::OrHash],
          access_list: T::Array[Privy::AccessListEntry::OrHash],
          chain_id: Privy::Quantity::Variants,
          fee_payer_signature: Privy::TempoFeePayerSignature::OrHash,
          fee_token: String,
          from: String,
          gas_limit: Privy::Quantity::Variants,
          max_fee_per_gas: Privy::Quantity::Variants,
          max_priority_fee_per_gas: Privy::Quantity::Variants,
          nonce: Privy::Quantity::Variants,
          nonce_key: Privy::Quantity::Variants,
          valid_after: Privy::Quantity::Variants,
          valid_before: Privy::Quantity::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        calls:,
        type:,
        aa_authorization_list: nil,
        access_list: nil,
        # A quantity value that can be either a hex string starting with '0x' or a
        # non-negative integer.
        chain_id: nil,
        # A fee payer signature for sponsored Tempo transactions (secp256k1 only).
        fee_payer_signature: nil,
        fee_token: nil,
        from: nil,
        # A quantity value that can be either a hex string starting with '0x' or a
        # non-negative integer.
        gas_limit: nil,
        # A quantity value that can be either a hex string starting with '0x' or a
        # non-negative integer.
        max_fee_per_gas: nil,
        # A quantity value that can be either a hex string starting with '0x' or a
        # non-negative integer.
        max_priority_fee_per_gas: nil,
        # A quantity value that can be either a hex string starting with '0x' or a
        # non-negative integer.
        nonce: nil,
        # A quantity value that can be either a hex string starting with '0x' or a
        # non-negative integer.
        nonce_key: nil,
        # A quantity value that can be either a hex string starting with '0x' or a
        # non-negative integer.
        valid_after: nil,
        # A quantity value that can be either a hex string starting with '0x' or a
        # non-negative integer.
        valid_before: nil
      )
      end

      sig do
        override.returns(
          {
            calls: T::Array[Privy::TempoCall],
            type: Privy::UnsignedTempoTransaction::Type::OrFloat,
            aa_authorization_list: T::Array[Privy::TempoAaAuthorization],
            access_list: T::Array[Privy::AccessListEntry],
            chain_id: Privy::Quantity::Variants,
            fee_payer_signature: Privy::TempoFeePayerSignature,
            fee_token: String,
            from: String,
            gas_limit: Privy::Quantity::Variants,
            max_fee_per_gas: Privy::Quantity::Variants,
            max_priority_fee_per_gas: Privy::Quantity::Variants,
            nonce: Privy::Quantity::Variants,
            nonce_key: Privy::Quantity::Variants,
            valid_after: Privy::Quantity::Variants,
            valid_before: Privy::Quantity::Variants
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedFloat =
          T.type_alias { T.all(Float, Privy::UnsignedTempoTransaction::Type) }
        OrFloat = T.type_alias { Float }

        TYPE_118 =
          T.let(118, Privy::UnsignedTempoTransaction::Type::TaggedFloat)

        sig do
          override.returns(
            T::Array[Privy::UnsignedTempoTransaction::Type::TaggedFloat]
          )
        end
        def self.values
        end
      end
    end
  end
end
