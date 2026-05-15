# typed: strong

module Privy
  module Models
    class LinkedAccountSolanaEmbeddedWallet < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::LinkedAccountSolanaEmbeddedWallet,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :address

      sig { returns(String) }
      attr_accessor :chain_id

      sig do
        returns(
          Privy::LinkedAccountSolanaEmbeddedWallet::ChainType::TaggedSymbol
        )
      end
      attr_accessor :chain_type

      sig do
        returns(
          Privy::LinkedAccountSolanaEmbeddedWallet::ConnectorType::TaggedSymbol
        )
      end
      attr_accessor :connector_type

      sig { returns(T::Boolean) }
      attr_accessor :delegated

      sig { returns(T.nilable(Float)) }
      attr_accessor :first_verified_at

      sig { returns(T::Boolean) }
      attr_accessor :imported

      sig { returns(T.nilable(Float)) }
      attr_accessor :latest_verified_at

      sig { returns(String) }
      attr_accessor :public_key

      # The method used to recover an embedded wallet account.
      sig { returns(Privy::EmbeddedWalletRecoveryMethod::TaggedSymbol) }
      attr_accessor :recovery_method

      sig do
        returns(Privy::LinkedAccountSolanaEmbeddedWallet::Type::TaggedSymbol)
      end
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :verified_at

      sig do
        returns(
          Privy::LinkedAccountSolanaEmbeddedWallet::WalletClient::TaggedSymbol
        )
      end
      attr_accessor :wallet_client

      sig do
        returns(
          Privy::LinkedAccountSolanaEmbeddedWallet::WalletClientType::TaggedSymbol
        )
      end
      attr_accessor :wallet_client_type

      sig { returns(Float) }
      attr_accessor :wallet_index

      # A Solana embedded wallet account linked to the user.
      sig do
        params(
          id: T.nilable(String),
          address: String,
          chain_id: String,
          chain_type:
            Privy::LinkedAccountSolanaEmbeddedWallet::ChainType::OrSymbol,
          connector_type:
            Privy::LinkedAccountSolanaEmbeddedWallet::ConnectorType::OrSymbol,
          delegated: T::Boolean,
          first_verified_at: T.nilable(Float),
          imported: T::Boolean,
          latest_verified_at: T.nilable(Float),
          public_key: String,
          recovery_method: Privy::EmbeddedWalletRecoveryMethod::OrSymbol,
          type: Privy::LinkedAccountSolanaEmbeddedWallet::Type::OrSymbol,
          verified_at: Float,
          wallet_client:
            Privy::LinkedAccountSolanaEmbeddedWallet::WalletClient::OrSymbol,
          wallet_client_type:
            Privy::LinkedAccountSolanaEmbeddedWallet::WalletClientType::OrSymbol,
          wallet_index: Float
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        address:,
        chain_id:,
        chain_type:,
        connector_type:,
        delegated:,
        first_verified_at:,
        imported:,
        latest_verified_at:,
        public_key:,
        # The method used to recover an embedded wallet account.
        recovery_method:,
        type:,
        verified_at:,
        wallet_client:,
        wallet_client_type:,
        wallet_index:
      )
      end

      sig do
        override.returns(
          {
            id: T.nilable(String),
            address: String,
            chain_id: String,
            chain_type:
              Privy::LinkedAccountSolanaEmbeddedWallet::ChainType::TaggedSymbol,
            connector_type:
              Privy::LinkedAccountSolanaEmbeddedWallet::ConnectorType::TaggedSymbol,
            delegated: T::Boolean,
            first_verified_at: T.nilable(Float),
            imported: T::Boolean,
            latest_verified_at: T.nilable(Float),
            public_key: String,
            recovery_method: Privy::EmbeddedWalletRecoveryMethod::TaggedSymbol,
            type: Privy::LinkedAccountSolanaEmbeddedWallet::Type::TaggedSymbol,
            verified_at: Float,
            wallet_client:
              Privy::LinkedAccountSolanaEmbeddedWallet::WalletClient::TaggedSymbol,
            wallet_client_type:
              Privy::LinkedAccountSolanaEmbeddedWallet::WalletClientType::TaggedSymbol,
            wallet_index: Float
          }
        )
      end
      def to_hash
      end

      module ChainType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::LinkedAccountSolanaEmbeddedWallet::ChainType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SOLANA =
          T.let(
            :solana,
            Privy::LinkedAccountSolanaEmbeddedWallet::ChainType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::LinkedAccountSolanaEmbeddedWallet::ChainType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module ConnectorType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::LinkedAccountSolanaEmbeddedWallet::ConnectorType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMBEDDED =
          T.let(
            :embedded,
            Privy::LinkedAccountSolanaEmbeddedWallet::ConnectorType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::LinkedAccountSolanaEmbeddedWallet::ConnectorType::TaggedSymbol
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
            T.all(Symbol, Privy::LinkedAccountSolanaEmbeddedWallet::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET =
          T.let(
            :wallet,
            Privy::LinkedAccountSolanaEmbeddedWallet::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::LinkedAccountSolanaEmbeddedWallet::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module WalletClient
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::LinkedAccountSolanaEmbeddedWallet::WalletClient
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRIVY =
          T.let(
            :privy,
            Privy::LinkedAccountSolanaEmbeddedWallet::WalletClient::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::LinkedAccountSolanaEmbeddedWallet::WalletClient::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module WalletClientType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::LinkedAccountSolanaEmbeddedWallet::WalletClientType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRIVY =
          T.let(
            :privy,
            Privy::LinkedAccountSolanaEmbeddedWallet::WalletClientType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::LinkedAccountSolanaEmbeddedWallet::WalletClientType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
