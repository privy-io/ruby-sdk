# typed: strong

module Privy
  module Models
    class BridgeStaticMemoDepositMetadata < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::BridgeStaticMemoDepositMetadata,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::BridgeStaticMemoDepositMetadata::Method::TaggedSymbol)
      end
      attr_accessor :method_

      sig { returns(String) }
      attr_accessor :static_memo_event_id

      sig { returns(String) }
      attr_accessor :static_memo_id

      sig do
        returns(Privy::BridgeStaticMemoDepositMetadata::Type::TaggedSymbol)
      end
      attr_accessor :type

      # Bridge metadata for a fiat deposit via static memo.
      sig do
        params(
          method_: Privy::BridgeStaticMemoDepositMetadata::Method::OrSymbol,
          static_memo_event_id: String,
          static_memo_id: String,
          type: Privy::BridgeStaticMemoDepositMetadata::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(method_:, static_memo_event_id:, static_memo_id:, type:)
      end

      sig do
        override.returns(
          {
            method_:
              Privy::BridgeStaticMemoDepositMetadata::Method::TaggedSymbol,
            static_memo_event_id: String,
            static_memo_id: String,
            type: Privy::BridgeStaticMemoDepositMetadata::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::BridgeStaticMemoDepositMetadata::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STATIC_MEMO =
          T.let(
            :static_memo,
            Privy::BridgeStaticMemoDepositMetadata::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::BridgeStaticMemoDepositMetadata::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::BridgeStaticMemoDepositMetadata::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FIAT_DEPOSIT =
          T.let(
            :fiat_deposit,
            Privy::BridgeStaticMemoDepositMetadata::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::BridgeStaticMemoDepositMetadata::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
