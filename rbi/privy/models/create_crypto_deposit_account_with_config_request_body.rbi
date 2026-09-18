# typed: strong

module Privy
  module Models
    class CreateCryptoDepositAccountWithConfigRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CreateCryptoDepositAccountWithConfigRequestBody,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :deposit_config_id

      sig do
        returns(
          Privy::CreateCryptoDepositAccountWithConfigRequestBody::Type::OrSymbol
        )
      end
      attr_accessor :type

      # How deposit source wallets are chosen. Omission uses `dedicated`. Destination
      # reuse applies only to the destination's own chain type.
      sig { returns(T.nilable(Privy::CryptoDepositAddressStrategy::OrSymbol)) }
      attr_reader :deposit_address_strategy

      sig do
        params(
          deposit_address_strategy:
            Privy::CryptoDepositAddressStrategy::OrSymbol
        ).void
      end
      attr_writer :deposit_address_strategy

      # Creates a crypto deposit account from an existing deposit configuration.
      sig do
        params(
          deposit_config_id: String,
          type:
            Privy::CreateCryptoDepositAccountWithConfigRequestBody::Type::OrSymbol,
          deposit_address_strategy:
            Privy::CryptoDepositAddressStrategy::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        deposit_config_id:,
        type:,
        # How deposit source wallets are chosen. Omission uses `dedicated`. Destination
        # reuse applies only to the destination's own chain type.
        deposit_address_strategy: nil
      )
      end

      sig do
        override.returns(
          {
            deposit_config_id: String,
            type:
              Privy::CreateCryptoDepositAccountWithConfigRequestBody::Type::OrSymbol,
            deposit_address_strategy:
              Privy::CryptoDepositAddressStrategy::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::CreateCryptoDepositAccountWithConfigRequestBody::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DEPOSIT_CONFIG =
          T.let(
            :deposit_config,
            Privy::CreateCryptoDepositAccountWithConfigRequestBody::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::CreateCryptoDepositAccountWithConfigRequestBody::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
