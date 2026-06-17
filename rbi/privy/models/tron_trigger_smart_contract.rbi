# typed: strong

module Privy
  module Models
    class TronTriggerSmartContract < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TronTriggerSmartContract, Privy::Internal::AnyHash)
        end

      # Tron address in hex format: 41-prefixed, 42 hex characters (21 bytes), no 0x
      # prefix.
      sig { returns(String) }
      attr_accessor :contract_address

      # Tron address in hex format: 41-prefixed, 42 hex characters (21 bytes), no 0x
      # prefix.
      sig { returns(String) }
      attr_accessor :owner_address

      sig { returns(Privy::TronTriggerSmartContract::Type::OrSymbol) }
      attr_accessor :type

      sig { returns(T.nilable(Integer)) }
      attr_reader :call_token_value

      sig { params(call_token_value: Integer).void }
      attr_writer :call_token_value

      sig { returns(T.nilable(Integer)) }
      attr_reader :call_value

      sig { params(call_value: Integer).void }
      attr_writer :call_value

      sig { returns(T.nilable(String)) }
      attr_reader :data

      sig { params(data: String).void }
      attr_writer :data

      sig { returns(T.nilable(Integer)) }
      attr_reader :token_id

      sig { params(token_id: Integer).void }
      attr_writer :token_id

      # Tron smart contract call (TRC-20 transfers and general contract interactions).
      sig do
        params(
          contract_address: String,
          owner_address: String,
          type: Privy::TronTriggerSmartContract::Type::OrSymbol,
          call_token_value: Integer,
          call_value: Integer,
          data: String,
          token_id: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Tron address in hex format: 41-prefixed, 42 hex characters (21 bytes), no 0x
        # prefix.
        contract_address:,
        # Tron address in hex format: 41-prefixed, 42 hex characters (21 bytes), no 0x
        # prefix.
        owner_address:,
        type:,
        call_token_value: nil,
        call_value: nil,
        data: nil,
        token_id: nil
      )
      end

      sig do
        override.returns(
          {
            contract_address: String,
            owner_address: String,
            type: Privy::TronTriggerSmartContract::Type::OrSymbol,
            call_token_value: Integer,
            call_value: Integer,
            data: String,
            token_id: Integer
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::TronTriggerSmartContract::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRIGGER_SMART_CONTRACT =
          T.let(
            :TriggerSmartContract,
            Privy::TronTriggerSmartContract::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::TronTriggerSmartContract::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
