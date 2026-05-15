# typed: strong

module Privy
  module Models
    class WalletCreateWalletsWithRecoveryParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletCreateWalletsWithRecoveryParams,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::WalletCreateWalletsWithRecoveryParams::PrimarySigner)
      end
      attr_reader :primary_signer

      sig do
        params(
          primary_signer:
            Privy::WalletCreateWalletsWithRecoveryParams::PrimarySigner::OrHash
        ).void
      end
      attr_writer :primary_signer

      sig do
        returns(Privy::WalletCreateWalletsWithRecoveryParams::RecoveryUser)
      end
      attr_reader :recovery_user

      sig do
        params(
          recovery_user:
            Privy::WalletCreateWalletsWithRecoveryParams::RecoveryUser::OrHash
        ).void
      end
      attr_writer :recovery_user

      sig do
        returns(T::Array[Privy::WalletCreateWalletsWithRecoveryParams::Wallet])
      end
      attr_accessor :wallets

      sig do
        params(
          primary_signer:
            Privy::WalletCreateWalletsWithRecoveryParams::PrimarySigner::OrHash,
          recovery_user:
            Privy::WalletCreateWalletsWithRecoveryParams::RecoveryUser::OrHash,
          wallets:
            T::Array[
              Privy::WalletCreateWalletsWithRecoveryParams::Wallet::OrHash
            ],
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        primary_signer:,
        recovery_user:,
        wallets:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            primary_signer:
              Privy::WalletCreateWalletsWithRecoveryParams::PrimarySigner,
            recovery_user:
              Privy::WalletCreateWalletsWithRecoveryParams::RecoveryUser,
            wallets:
              T::Array[Privy::WalletCreateWalletsWithRecoveryParams::Wallet],
            request_options: Privy::RequestOptions
          }
        )
      end
      def to_hash
      end

      class PrimarySigner < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::WalletCreateWalletsWithRecoveryParams::PrimarySigner,
              Privy::Internal::AnyHash
            )
          end

        # The JWT subject ID of the user.
        sig { returns(String) }
        attr_accessor :subject_id

        sig { params(subject_id: String).returns(T.attached_class) }
        def self.new(
          # The JWT subject ID of the user.
          subject_id:
        )
        end

        sig { override.returns({ subject_id: String }) }
        def to_hash
        end
      end

      class RecoveryUser < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::WalletCreateWalletsWithRecoveryParams::RecoveryUser,
              Privy::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              T.any(
                Privy::LinkedAccountEmailInput,
                Privy::LinkedAccountCustomJwtInput
              )
            ]
          )
        end
        attr_accessor :linked_accounts

        sig do
          params(
            linked_accounts:
              T::Array[
                T.any(
                  Privy::LinkedAccountEmailInput::OrHash,
                  Privy::LinkedAccountCustomJwtInput::OrHash
                )
              ]
          ).returns(T.attached_class)
        end
        def self.new(linked_accounts:)
        end

        sig do
          override.returns(
            {
              linked_accounts:
                T::Array[
                  T.any(
                    Privy::LinkedAccountEmailInput,
                    Privy::LinkedAccountCustomJwtInput
                  )
                ]
            }
          )
        end
        def to_hash
        end

        # The payload for importing an email account.
        module LinkedAccount
          extend Privy::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Privy::LinkedAccountEmailInput,
                Privy::LinkedAccountCustomJwtInput
              )
            end

          sig do
            override.returns(
              T::Array[
                Privy::WalletCreateWalletsWithRecoveryParams::RecoveryUser::LinkedAccount::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end

      class Wallet < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::WalletCreateWalletsWithRecoveryParams::Wallet,
              Privy::Internal::AnyHash
            )
          end

        # The wallet chain types.
        sig { returns(Privy::WalletChainType::OrSymbol) }
        attr_accessor :chain_type

        # A human-readable label for the wallet.
        sig { returns(T.nilable(String)) }
        attr_reader :display_name

        sig { params(display_name: String).void }
        attr_writer :display_name

        # A customer-provided identifier for mapping to external systems. URL-safe
        # characters only ([a-zA-Z0-9_-]), max 64 chars. Write-once: cannot be changed
        # after creation.
        sig { returns(T.nilable(String)) }
        attr_reader :external_id

        sig { params(external_id: String).void }
        attr_writer :external_id

        # An optional list of up to one policy ID to enforce on the wallet.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :policy_ids

        sig { params(policy_ids: T::Array[String]).void }
        attr_writer :policy_ids

        sig do
          params(
            chain_type: Privy::WalletChainType::OrSymbol,
            display_name: String,
            external_id: String,
            policy_ids: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The wallet chain types.
          chain_type:,
          # A human-readable label for the wallet.
          display_name: nil,
          # A customer-provided identifier for mapping to external systems. URL-safe
          # characters only ([a-zA-Z0-9_-]), max 64 chars. Write-once: cannot be changed
          # after creation.
          external_id: nil,
          # An optional list of up to one policy ID to enforce on the wallet.
          policy_ids: nil
        )
        end

        sig do
          override.returns(
            {
              chain_type: Privy::WalletChainType::OrSymbol,
              display_name: String,
              external_id: String,
              policy_ids: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
