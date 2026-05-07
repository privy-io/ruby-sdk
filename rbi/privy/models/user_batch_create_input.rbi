# typed: strong

module Privy
  module Models
    class UserBatchCreateInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::UserBatchCreateInput, Privy::Internal::AnyHash)
        end

      sig { returns(T::Array[Privy::UserBatchCreateInput::User]) }
      attr_accessor :users

      # The payload for batch creating users.
      sig do
        params(
          users: T::Array[Privy::UserBatchCreateInput::User::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(users:)
      end

      sig do
        override.returns({ users: T::Array[Privy::UserBatchCreateInput::User] })
      end
      def to_hash
      end

      class User < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Privy::UserBatchCreateInput::User, Privy::Internal::AnyHash)
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

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :create_embedded_wallet

        sig { params(create_embedded_wallet: T::Boolean).void }
        attr_writer :create_embedded_wallet

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :create_ethereum_smart_wallet

        sig { params(create_ethereum_smart_wallet: T::Boolean).void }
        attr_writer :create_ethereum_smart_wallet

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :create_ethereum_wallet

        sig { params(create_ethereum_wallet: T::Boolean).void }
        attr_writer :create_ethereum_wallet

        sig { returns(T.nilable(Float)) }
        attr_reader :create_n_embedded_wallets

        sig { params(create_n_embedded_wallets: Float).void }
        attr_writer :create_n_embedded_wallets

        sig { returns(T.nilable(Float)) }
        attr_reader :create_n_ethereum_wallets

        sig { params(create_n_ethereum_wallets: Float).void }
        attr_writer :create_n_ethereum_wallets

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :create_solana_wallet

        sig { params(create_solana_wallet: T::Boolean).void }
        attr_writer :create_solana_wallet

        # Custom metadata associated with the user.
        sig do
          returns(
            T.nilable(T::Hash[Symbol, Privy::CustomMetadataItem::Variants])
          )
        end
        attr_reader :custom_metadata

        sig do
          params(
            custom_metadata:
              T::Hash[Symbol, Privy::CustomMetadataItem::Variants]
          ).void
        end
        attr_writer :custom_metadata

        # Wallets to create.
        sig { returns(T.nilable(T::Array[Privy::WalletCreationInput])) }
        attr_reader :wallets

        sig do
          params(wallets: T::Array[Privy::WalletCreationInput::OrHash]).void
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
            create_embedded_wallet: T::Boolean,
            create_ethereum_smart_wallet: T::Boolean,
            create_ethereum_wallet: T::Boolean,
            create_n_embedded_wallets: Float,
            create_n_ethereum_wallets: Float,
            create_solana_wallet: T::Boolean,
            custom_metadata:
              T::Hash[Symbol, Privy::CustomMetadataItem::Variants],
            wallets: T::Array[Privy::WalletCreationInput::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          linked_accounts:,
          create_embedded_wallet: nil,
          create_ethereum_smart_wallet: nil,
          create_ethereum_wallet: nil,
          create_n_embedded_wallets: nil,
          create_n_ethereum_wallets: nil,
          create_solana_wallet: nil,
          # Custom metadata associated with the user.
          custom_metadata: nil,
          # Wallets to create.
          wallets: nil
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
              create_embedded_wallet: T::Boolean,
              create_ethereum_smart_wallet: T::Boolean,
              create_ethereum_wallet: T::Boolean,
              create_n_embedded_wallets: Float,
              create_n_ethereum_wallets: Float,
              create_solana_wallet: T::Boolean,
              custom_metadata:
                T::Hash[Symbol, Privy::CustomMetadataItem::Variants],
              wallets: T::Array[Privy::WalletCreationInput]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
