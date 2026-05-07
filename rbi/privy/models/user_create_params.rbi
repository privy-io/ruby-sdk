# typed: strong

module Privy
  module Models
    class UserCreateParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::UserCreateParams, Privy::Internal::AnyHash)
        end

      sig do
        returns(
          T::Array[
            T.any(
              Privy::LinkedAccountWalletInput,
              Privy::LinkedAccountEmailInput,
              Privy::LinkedAccountPhoneInput,
              Privy::LinkedAccountGoogleInput,
              Privy::LinkedAccountTwitterInput,
              Privy::LinkedAccountDiscordInput,
              Privy::LinkedAccountGitHubInput,
              Privy::LinkedAccountSpotifyInput,
              Privy::LinkedAccountInstagramInput,
              Privy::LinkedAccountTiktokInput,
              Privy::LinkedAccountLineInput,
              Privy::LinkedAccountTwitchInput,
              Privy::LinkedAccountAppleInput,
              Privy::LinkedAccountLinkedInInput,
              Privy::LinkedAccountFarcasterInput,
              Privy::LinkedAccountTelegramInput,
              Privy::LinkedAccountCustomJwtInput,
              Privy::LinkedAccountPasskeyInput
            )
          ]
        )
      end
      attr_accessor :linked_accounts

      # Custom metadata associated with the user.
      sig do
        returns(T.nilable(T::Hash[Symbol, Privy::CustomMetadataItem::Variants]))
      end
      attr_reader :custom_metadata

      sig do
        params(
          custom_metadata: T::Hash[Symbol, Privy::CustomMetadataItem::Variants]
        ).void
      end
      attr_writer :custom_metadata

      # Wallets to create for the user.
      sig { returns(T.nilable(T::Array[Privy::UserCreateParams::Wallet])) }
      attr_reader :wallets

      sig do
        params(wallets: T::Array[Privy::UserCreateParams::Wallet::OrHash]).void
      end
      attr_writer :wallets

      sig do
        params(
          linked_accounts:
            T::Array[
              T.any(
                Privy::LinkedAccountWalletInput::OrHash,
                Privy::LinkedAccountEmailInput::OrHash,
                Privy::LinkedAccountPhoneInput::OrHash,
                Privy::LinkedAccountGoogleInput::OrHash,
                Privy::LinkedAccountTwitterInput::OrHash,
                Privy::LinkedAccountDiscordInput::OrHash,
                Privy::LinkedAccountGitHubInput::OrHash,
                Privy::LinkedAccountSpotifyInput::OrHash,
                Privy::LinkedAccountInstagramInput::OrHash,
                Privy::LinkedAccountTiktokInput::OrHash,
                Privy::LinkedAccountLineInput::OrHash,
                Privy::LinkedAccountTwitchInput::OrHash,
                Privy::LinkedAccountAppleInput::OrHash,
                Privy::LinkedAccountLinkedInInput::OrHash,
                Privy::LinkedAccountFarcasterInput::OrHash,
                Privy::LinkedAccountTelegramInput::OrHash,
                Privy::LinkedAccountCustomJwtInput::OrHash,
                Privy::LinkedAccountPasskeyInput::OrHash
              )
            ],
          custom_metadata: T::Hash[Symbol, Privy::CustomMetadataItem::Variants],
          wallets: T::Array[Privy::UserCreateParams::Wallet::OrHash],
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        linked_accounts:,
        # Custom metadata associated with the user.
        custom_metadata: nil,
        # Wallets to create for the user.
        wallets: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            linked_accounts:
              T::Array[
                T.any(
                  Privy::LinkedAccountWalletInput,
                  Privy::LinkedAccountEmailInput,
                  Privy::LinkedAccountPhoneInput,
                  Privy::LinkedAccountGoogleInput,
                  Privy::LinkedAccountTwitterInput,
                  Privy::LinkedAccountDiscordInput,
                  Privy::LinkedAccountGitHubInput,
                  Privy::LinkedAccountSpotifyInput,
                  Privy::LinkedAccountInstagramInput,
                  Privy::LinkedAccountTiktokInput,
                  Privy::LinkedAccountLineInput,
                  Privy::LinkedAccountTwitchInput,
                  Privy::LinkedAccountAppleInput,
                  Privy::LinkedAccountLinkedInInput,
                  Privy::LinkedAccountFarcasterInput,
                  Privy::LinkedAccountTelegramInput,
                  Privy::LinkedAccountCustomJwtInput,
                  Privy::LinkedAccountPasskeyInput
                )
              ],
            custom_metadata:
              T::Hash[Symbol, Privy::CustomMetadataItem::Variants],
            wallets: T::Array[Privy::UserCreateParams::Wallet],
            request_options: Privy::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Wallet < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Privy::UserCreateParams::Wallet, Privy::Internal::AnyHash)
          end

        # The wallet chain types.
        sig { returns(Privy::WalletChainType::OrSymbol) }
        attr_accessor :chain_type

        # Additional signers for the wallet.
        sig do
          returns(
            T.nilable(
              T::Array[Privy::UserCreateParams::Wallet::AdditionalSigner]
            )
          )
        end
        attr_reader :additional_signers

        sig do
          params(
            additional_signers:
              T::Array[
                Privy::UserCreateParams::Wallet::AdditionalSigner::OrHash
              ]
          ).void
        end
        attr_writer :additional_signers

        # Create a smart wallet with this wallet as the signer. Only supported for wallets
        # with `chain_type: "ethereum"`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :create_smart_wallet

        sig { params(create_smart_wallet: T::Boolean).void }
        attr_writer :create_smart_wallet

        # Policy IDs to enforce on the wallet. Currently, only one policy is supported per
        # wallet.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :policy_ids

        sig { params(policy_ids: T::Array[String]).void }
        attr_writer :policy_ids

        sig do
          params(
            chain_type: Privy::WalletChainType::OrSymbol,
            additional_signers:
              T::Array[
                Privy::UserCreateParams::Wallet::AdditionalSigner::OrHash
              ],
            create_smart_wallet: T::Boolean,
            policy_ids: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The wallet chain types.
          chain_type:,
          # Additional signers for the wallet.
          additional_signers: nil,
          # Create a smart wallet with this wallet as the signer. Only supported for wallets
          # with `chain_type: "ethereum"`.
          create_smart_wallet: nil,
          # Policy IDs to enforce on the wallet. Currently, only one policy is supported per
          # wallet.
          policy_ids: nil
        )
        end

        sig do
          override.returns(
            {
              chain_type: Privy::WalletChainType::OrSymbol,
              additional_signers:
                T::Array[Privy::UserCreateParams::Wallet::AdditionalSigner],
              create_smart_wallet: T::Boolean,
              policy_ids: T::Array[String]
            }
          )
        end
        def to_hash
        end

        class AdditionalSigner < Privy::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Privy::UserCreateParams::Wallet::AdditionalSigner,
                Privy::Internal::AnyHash
              )
            end

          # A unique identifier for a key quorum.
          sig { returns(String) }
          attr_accessor :signer_id

          # The array of policy IDs that will be applied to wallet requests. If specified,
          # this will override the base policy IDs set on the wallet. Currently, only one
          # policy is supported per signer.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :override_policy_ids

          sig { params(override_policy_ids: T::Array[String]).void }
          attr_writer :override_policy_ids

          sig do
            params(
              signer_id: String,
              override_policy_ids: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # A unique identifier for a key quorum.
            signer_id:,
            # The array of policy IDs that will be applied to wallet requests. If specified,
            # this will override the base policy IDs set on the wallet. Currently, only one
            # policy is supported per signer.
            override_policy_ids: nil
          )
          end

          sig do
            override.returns(
              { signer_id: String, override_policy_ids: T::Array[String] }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
