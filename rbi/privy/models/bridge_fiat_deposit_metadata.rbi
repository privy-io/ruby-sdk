# typed: strong

module Privy
  module Models
    class BridgeFiatDepositMetadata < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::BridgeFiatDepositMetadata, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :activity_id

      sig { returns(Privy::BridgeFiatDepositMetadata::Method::TaggedSymbol) }
      attr_accessor :method_

      sig { returns(Privy::BridgeFiatDepositMetadata::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :virtual_account_id

      # Bridge metadata for a fiat deposit via virtual account.
      sig do
        params(
          activity_id: String,
          method_: Privy::BridgeFiatDepositMetadata::Method::OrSymbol,
          type: Privy::BridgeFiatDepositMetadata::Type::OrSymbol,
          virtual_account_id: String
        ).returns(T.attached_class)
      end
      def self.new(activity_id:, method_:, type:, virtual_account_id:)
      end

      sig do
        override.returns(
          {
            activity_id: String,
            method_: Privy::BridgeFiatDepositMetadata::Method::TaggedSymbol,
            type: Privy::BridgeFiatDepositMetadata::Type::TaggedSymbol,
            virtual_account_id: String
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::BridgeFiatDepositMetadata::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VIRTUAL_ACCOUNT =
          T.let(
            :virtual_account,
            Privy::BridgeFiatDepositMetadata::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::BridgeFiatDepositMetadata::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::BridgeFiatDepositMetadata::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FIAT_DEPOSIT =
          T.let(
            :fiat_deposit,
            Privy::BridgeFiatDepositMetadata::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::BridgeFiatDepositMetadata::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
